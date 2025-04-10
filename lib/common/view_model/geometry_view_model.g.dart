// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeometryViewModel _$GeometryViewModelFromJson(Map<String, dynamic> json) =>
    _GeometryViewModel(
      location:
          json['location'] == null
              ? null
              : LocationViewModel.fromJson(
                json['location'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$GeometryViewModelToJson(_GeometryViewModel instance) =>
    <String, dynamic>{'location': instance.location};
