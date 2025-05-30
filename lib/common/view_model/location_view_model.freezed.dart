// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationViewModel {

 double get lat; double get lng;
/// Create a copy of LocationViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationViewModelCopyWith<LocationViewModel> get copyWith => _$LocationViewModelCopyWithImpl<LocationViewModel>(this as LocationViewModel, _$identity);

  /// Serializes this LocationViewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationViewModel&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'LocationViewModel(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $LocationViewModelCopyWith<$Res>  {
  factory $LocationViewModelCopyWith(LocationViewModel value, $Res Function(LocationViewModel) _then) = _$LocationViewModelCopyWithImpl;
@useResult
$Res call({
 double lat, double lng
});




}
/// @nodoc
class _$LocationViewModelCopyWithImpl<$Res>
    implements $LocationViewModelCopyWith<$Res> {
  _$LocationViewModelCopyWithImpl(this._self, this._then);

  final LocationViewModel _self;
  final $Res Function(LocationViewModel) _then;

/// Create a copy of LocationViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = null,Object? lng = null,}) {
  return _then(_self.copyWith(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LocationViewModel extends LocationViewModel {
  const _LocationViewModel({this.lat = 0.0, this.lng = 0.0}): super._();
  factory _LocationViewModel.fromJson(Map<String, dynamic> json) => _$LocationViewModelFromJson(json);

@override@JsonKey() final  double lat;
@override@JsonKey() final  double lng;

/// Create a copy of LocationViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationViewModelCopyWith<_LocationViewModel> get copyWith => __$LocationViewModelCopyWithImpl<_LocationViewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationViewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationViewModel&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'LocationViewModel(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$LocationViewModelCopyWith<$Res> implements $LocationViewModelCopyWith<$Res> {
  factory _$LocationViewModelCopyWith(_LocationViewModel value, $Res Function(_LocationViewModel) _then) = __$LocationViewModelCopyWithImpl;
@override @useResult
$Res call({
 double lat, double lng
});




}
/// @nodoc
class __$LocationViewModelCopyWithImpl<$Res>
    implements _$LocationViewModelCopyWith<$Res> {
  __$LocationViewModelCopyWithImpl(this._self, this._then);

  final _LocationViewModel _self;
  final $Res Function(_LocationViewModel) _then;

/// Create a copy of LocationViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = null,Object? lng = null,}) {
  return _then(_LocationViewModel(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
