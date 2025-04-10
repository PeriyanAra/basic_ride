import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'location_view_model.freezed.dart';
part 'location_view_model.g.dart';

@freezed
sealed class LocationViewModel with _$LocationViewModel {
  const factory LocationViewModel({
    @Default(0.0) double lat,
    @Default(0.0) double lng,
  }) = _LocationViewModel;

  factory LocationViewModel.fromJson(Map<String, Object?> json) =>
      _$LocationViewModelFromJson(json);

  const LocationViewModel._();
  LatLng toLatLong() => LatLng(lat, lng);
}
