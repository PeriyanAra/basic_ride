// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaceViewModel _$PlaceViewModelFromJson(Map<String, dynamic> json) =>
    _PlaceViewModel(
      description: json['description'] as String? ?? '',
      name: json['name'] as String? ?? '',
      vicinity: json['vicinity'] as String? ?? '',
      geometry:
          json['geometry'] == null
              ? null
              : GeometryViewModel.fromJson(
                json['geometry'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$PlaceViewModelToJson(_PlaceViewModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'name': instance.name,
      'vicinity': instance.vicinity,
      'geometry': instance.geometry,
    };
