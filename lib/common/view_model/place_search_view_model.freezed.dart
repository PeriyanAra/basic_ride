// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_search_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceSearchViewModel {

 String get description;@JsonKey(name: 'place_id') String get placeId;
/// Create a copy of PlaceSearchViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceSearchViewModelCopyWith<PlaceSearchViewModel> get copyWith => _$PlaceSearchViewModelCopyWithImpl<PlaceSearchViewModel>(this as PlaceSearchViewModel, _$identity);

  /// Serializes this PlaceSearchViewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceSearchViewModel&&(identical(other.description, description) || other.description == description)&&(identical(other.placeId, placeId) || other.placeId == placeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,placeId);

@override
String toString() {
  return 'PlaceSearchViewModel(description: $description, placeId: $placeId)';
}


}

/// @nodoc
abstract mixin class $PlaceSearchViewModelCopyWith<$Res>  {
  factory $PlaceSearchViewModelCopyWith(PlaceSearchViewModel value, $Res Function(PlaceSearchViewModel) _then) = _$PlaceSearchViewModelCopyWithImpl;
@useResult
$Res call({
 String description,@JsonKey(name: 'place_id') String placeId
});




}
/// @nodoc
class _$PlaceSearchViewModelCopyWithImpl<$Res>
    implements $PlaceSearchViewModelCopyWith<$Res> {
  _$PlaceSearchViewModelCopyWithImpl(this._self, this._then);

  final PlaceSearchViewModel _self;
  final $Res Function(PlaceSearchViewModel) _then;

/// Create a copy of PlaceSearchViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? placeId = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,placeId: null == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PlaceSearchViewModel implements PlaceSearchViewModel {
  const _PlaceSearchViewModel({required this.description, @JsonKey(name: 'place_id') required this.placeId});
  factory _PlaceSearchViewModel.fromJson(Map<String, dynamic> json) => _$PlaceSearchViewModelFromJson(json);

@override final  String description;
@override@JsonKey(name: 'place_id') final  String placeId;

/// Create a copy of PlaceSearchViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceSearchViewModelCopyWith<_PlaceSearchViewModel> get copyWith => __$PlaceSearchViewModelCopyWithImpl<_PlaceSearchViewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceSearchViewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceSearchViewModel&&(identical(other.description, description) || other.description == description)&&(identical(other.placeId, placeId) || other.placeId == placeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,placeId);

@override
String toString() {
  return 'PlaceSearchViewModel(description: $description, placeId: $placeId)';
}


}

/// @nodoc
abstract mixin class _$PlaceSearchViewModelCopyWith<$Res> implements $PlaceSearchViewModelCopyWith<$Res> {
  factory _$PlaceSearchViewModelCopyWith(_PlaceSearchViewModel value, $Res Function(_PlaceSearchViewModel) _then) = __$PlaceSearchViewModelCopyWithImpl;
@override @useResult
$Res call({
 String description,@JsonKey(name: 'place_id') String placeId
});




}
/// @nodoc
class __$PlaceSearchViewModelCopyWithImpl<$Res>
    implements _$PlaceSearchViewModelCopyWith<$Res> {
  __$PlaceSearchViewModelCopyWithImpl(this._self, this._then);

  final _PlaceSearchViewModel _self;
  final $Res Function(_PlaceSearchViewModel) _then;

/// Create a copy of PlaceSearchViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? placeId = null,}) {
  return _then(_PlaceSearchViewModel(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,placeId: null == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
