import 'package:basic_ride/common/common.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'google_map_cubit.freezed.dart';
part 'google_map_cubit_state.dart';

class GoogleMapCubit extends Cubit<GoogleMapCubitState> {
  GoogleMapCubit() : super(const GoogleMapCubitState.loading());
  BitmapDescriptor _sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor _destinationIcon = BitmapDescriptor.defaultMarker;
  bool _isMarkerInitialized = false;

  void fetchPolylineAndMarkers(
    LocationViewModel? pickupLocation,
    LocationViewModel? destLocation,
  ) async {
    emit(const GoogleMapCubitState.loading());

    if (pickupLocation == null || destLocation == null) return;
    List<LatLng> polylineCoordinates = [];
    final polylinePoints = PolylinePoints();

    try {
      final result = await polylinePoints.getRouteBetweenCoordinates(
        request: PolylineRequest(
          origin: PointLatLng(pickupLocation.lat, pickupLocation.lng),
          destination: PointLatLng(destLocation.lat, destLocation.lng),
          mode: TravelMode.transit,
        ),
        googleApiKey: EnvService().googleMapKey,
      );

      for (var point in result.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }

      Polyline polyline = Polyline(
        polylineId: const PolylineId("poly"),
        points: polylineCoordinates,
      );
      if (!_isMarkerInitialized) {
        _sourceIcon = await BitmapDescriptor.asset(
          const ImageConfiguration(devicePixelRatio: 2.5),
          'assets/images/driving_pin.png',
        );
        _destinationIcon = await BitmapDescriptor.asset(
          const ImageConfiguration(devicePixelRatio: 2.5),
          'assets/images/destination_map_marker.png',
        );
        _isMarkerInitialized = true;
      }

      emit(
        GoogleMapCubitState.loaded(
          polyline: polyline,
          markers: [
            Marker(
              markerId: const MarkerId('sourcePin'),
              position: pickupLocation.toLatLong(),
              icon: _sourceIcon,
            ),
            Marker(
              markerId: const MarkerId('destPin'),
              position: destLocation.toLatLong(),
              icon: _destinationIcon,
            ),
          ],
        ),
      );
    } catch (e) {
      emit(
        const GoogleMapCubitState.error(errorMessage: 'could_not_create_polyline'),
      );
    }
  }
}
