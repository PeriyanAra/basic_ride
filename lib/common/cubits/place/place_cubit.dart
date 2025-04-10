import 'dart:convert' as convert;
import 'dart:developer';

import 'package:basic_ride/common/common.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

part 'place_cubit.freezed.dart';
part 'place_cubit_state.dart';

class PlaceCubit extends Cubit<PlaceCubitState> {
  PlaceCubit()
    : super(
        const PlaceCubitState.loading(
          pickupPlace: null,
          destinationPlace: null,
        ),
      );

  final _debouncer = Debouncer(milliseconds: 300);

  Future<void> searchPlaces({
    required String search,
    required AddressType searchEnum,
  }) async {
    _debouncer.run(() async {
      if (isClosed) return;

      emit(
        PlaceCubitState.loading(
          pickupPlace: state.pickupPlace,
          destinationPlace: state.destinationPlace,
        ),
      );

      try {
        final url =
            'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$search&types=(cities)&key=${EnvService().googleMapKey}';
        var response = await http.get(Uri.parse(url));
        var json = convert.jsonDecode(response.body);
        var jsonResult =
            json['predictions'] is List<dynamic>
                ? json['predictions'] as List<dynamic>
                : null;

        if (jsonResult == null) {
          if (isClosed) return;

          emit(
            PlaceCubitState.error(
              pickupPlace: state.pickupPlace,
              destinationPlace: state.destinationPlace,
            ),
          );

          return;
        }
        final results =
            jsonResult
                .map((place) => PlaceSearchViewModel.fromJson(place))
                .toList();

        if (isClosed) return;

        emit(switch (searchEnum) {
          AddressType.destination => PlaceCubitState.loaded(
            destinationPlace: SearchViewModel(
              place: state.destinationPlace?.place,
              placeSearchResults: results,
            ),
            pickupPlace: state.pickupPlace,
          ),
          AddressType.pickup => PlaceCubitState.loaded(
            pickupPlace: SearchViewModel(
              place: state.pickupPlace?.place,
              placeSearchResults: results,
            ),
            destinationPlace: state.destinationPlace,
          ),
        });
      } catch (e) {
        if (isClosed) return;

        emit(
          PlaceCubitState.error(
            pickupPlace: state.pickupPlace,
            destinationPlace: state.destinationPlace,
          ),
        );
      }
    });
  }

  Future<void> getPlaceById({
    required String placeId,
    required AddressType searchEnum,
  }) async {
    emit(
      PlaceCubitState.loading(
        pickupPlace: state.pickupPlace,
        destinationPlace: state.destinationPlace,
      ),
    );

    try {
      final url =
          'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=${EnvService().googleMapKey}';
      final response = await http.get(Uri.parse(url));
      final json = convert.jsonDecode(response.body);
      final jsonResult =
          json['result'] is Map ? json['result'] as Map<String, dynamic> : null;

      if (jsonResult == null) {
        emit(
          PlaceCubitState.error(
            pickupPlace: state.pickupPlace,
            destinationPlace: state.destinationPlace,
          ),
        );

        return;
      }

      final place = PlaceViewModel.fromJson(jsonResult);

      emit(switch (searchEnum) {
        AddressType.destination => PlaceCubitState.loaded(
          destinationPlace: state.destinationPlace?.copyWith(place: place),
          pickupPlace: state.pickupPlace,
        ),
        AddressType.pickup => PlaceCubitState.loaded(
          destinationPlace: state.destinationPlace,
          pickupPlace: state.pickupPlace?.copyWith(place: place),
        ),
      });
    } catch (e) {
      log(e.toString());
      emit(
        PlaceCubitState.error(
          pickupPlace: state.pickupPlace,
          destinationPlace: state.destinationPlace,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _debouncer.dispose();

    return super.close();
  }
}
