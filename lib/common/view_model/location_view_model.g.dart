// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocationViewModel _$LocationViewModelFromJson(Map<String, dynamic> json) =>
    _LocationViewModel(
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$LocationViewModelToJson(_LocationViewModel instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};
