// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geometry_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeometryViewModel {

 LocationViewModel? get location;
/// Create a copy of GeometryViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeometryViewModelCopyWith<GeometryViewModel> get copyWith => _$GeometryViewModelCopyWithImpl<GeometryViewModel>(this as GeometryViewModel, _$identity);

  /// Serializes this GeometryViewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeometryViewModel&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,location);

@override
String toString() {
  return 'GeometryViewModel(location: $location)';
}


}

/// @nodoc
abstract mixin class $GeometryViewModelCopyWith<$Res>  {
  factory $GeometryViewModelCopyWith(GeometryViewModel value, $Res Function(GeometryViewModel) _then) = _$GeometryViewModelCopyWithImpl;
@useResult
$Res call({
 LocationViewModel? location
});


$LocationViewModelCopyWith<$Res>? get location;

}
/// @nodoc
class _$GeometryViewModelCopyWithImpl<$Res>
    implements $GeometryViewModelCopyWith<$Res> {
  _$GeometryViewModelCopyWithImpl(this._self, this._then);

  final GeometryViewModel _self;
  final $Res Function(GeometryViewModel) _then;

/// Create a copy of GeometryViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? location = freezed,}) {
  return _then(_self.copyWith(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationViewModel?,
  ));
}
/// Create a copy of GeometryViewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationViewModelCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationViewModelCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _GeometryViewModel implements GeometryViewModel {
  const _GeometryViewModel({this.location});
  factory _GeometryViewModel.fromJson(Map<String, dynamic> json) => _$GeometryViewModelFromJson(json);

@override final  LocationViewModel? location;

/// Create a copy of GeometryViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeometryViewModelCopyWith<_GeometryViewModel> get copyWith => __$GeometryViewModelCopyWithImpl<_GeometryViewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeometryViewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeometryViewModel&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,location);

@override
String toString() {
  return 'GeometryViewModel(location: $location)';
}


}

/// @nodoc
abstract mixin class _$GeometryViewModelCopyWith<$Res> implements $GeometryViewModelCopyWith<$Res> {
  factory _$GeometryViewModelCopyWith(_GeometryViewModel value, $Res Function(_GeometryViewModel) _then) = __$GeometryViewModelCopyWithImpl;
@override @useResult
$Res call({
 LocationViewModel? location
});


@override $LocationViewModelCopyWith<$Res>? get location;

}
/// @nodoc
class __$GeometryViewModelCopyWithImpl<$Res>
    implements _$GeometryViewModelCopyWith<$Res> {
  __$GeometryViewModelCopyWithImpl(this._self, this._then);

  final _GeometryViewModel _self;
  final $Res Function(_GeometryViewModel) _then;

/// Create a copy of GeometryViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? location = freezed,}) {
  return _then(_GeometryViewModel(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationViewModel?,
  ));
}

/// Create a copy of GeometryViewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationViewModelCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationViewModelCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

// dart format on
