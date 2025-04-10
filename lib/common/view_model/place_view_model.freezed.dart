// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceViewModel {

 String get description; String get name; String get vicinity; GeometryViewModel? get geometry;
/// Create a copy of PlaceViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceViewModelCopyWith<PlaceViewModel> get copyWith => _$PlaceViewModelCopyWithImpl<PlaceViewModel>(this as PlaceViewModel, _$identity);

  /// Serializes this PlaceViewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceViewModel&&(identical(other.description, description) || other.description == description)&&(identical(other.name, name) || other.name == name)&&(identical(other.vicinity, vicinity) || other.vicinity == vicinity)&&(identical(other.geometry, geometry) || other.geometry == geometry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,name,vicinity,geometry);

@override
String toString() {
  return 'PlaceViewModel(description: $description, name: $name, vicinity: $vicinity, geometry: $geometry)';
}


}

/// @nodoc
abstract mixin class $PlaceViewModelCopyWith<$Res>  {
  factory $PlaceViewModelCopyWith(PlaceViewModel value, $Res Function(PlaceViewModel) _then) = _$PlaceViewModelCopyWithImpl;
@useResult
$Res call({
 String description, String name, String vicinity, GeometryViewModel? geometry
});


$GeometryViewModelCopyWith<$Res>? get geometry;

}
/// @nodoc
class _$PlaceViewModelCopyWithImpl<$Res>
    implements $PlaceViewModelCopyWith<$Res> {
  _$PlaceViewModelCopyWithImpl(this._self, this._then);

  final PlaceViewModel _self;
  final $Res Function(PlaceViewModel) _then;

/// Create a copy of PlaceViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? name = null,Object? vicinity = null,Object? geometry = freezed,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,vicinity: null == vicinity ? _self.vicinity : vicinity // ignore: cast_nullable_to_non_nullable
as String,geometry: freezed == geometry ? _self.geometry : geometry // ignore: cast_nullable_to_non_nullable
as GeometryViewModel?,
  ));
}
/// Create a copy of PlaceViewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeometryViewModelCopyWith<$Res>? get geometry {
    if (_self.geometry == null) {
    return null;
  }

  return $GeometryViewModelCopyWith<$Res>(_self.geometry!, (value) {
    return _then(_self.copyWith(geometry: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PlaceViewModel implements PlaceViewModel {
  const _PlaceViewModel({this.description = '', this.name = '', this.vicinity = '', this.geometry});
  factory _PlaceViewModel.fromJson(Map<String, dynamic> json) => _$PlaceViewModelFromJson(json);

@override@JsonKey() final  String description;
@override@JsonKey() final  String name;
@override@JsonKey() final  String vicinity;
@override final  GeometryViewModel? geometry;

/// Create a copy of PlaceViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceViewModelCopyWith<_PlaceViewModel> get copyWith => __$PlaceViewModelCopyWithImpl<_PlaceViewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlaceViewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceViewModel&&(identical(other.description, description) || other.description == description)&&(identical(other.name, name) || other.name == name)&&(identical(other.vicinity, vicinity) || other.vicinity == vicinity)&&(identical(other.geometry, geometry) || other.geometry == geometry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,name,vicinity,geometry);

@override
String toString() {
  return 'PlaceViewModel(description: $description, name: $name, vicinity: $vicinity, geometry: $geometry)';
}


}

/// @nodoc
abstract mixin class _$PlaceViewModelCopyWith<$Res> implements $PlaceViewModelCopyWith<$Res> {
  factory _$PlaceViewModelCopyWith(_PlaceViewModel value, $Res Function(_PlaceViewModel) _then) = __$PlaceViewModelCopyWithImpl;
@override @useResult
$Res call({
 String description, String name, String vicinity, GeometryViewModel? geometry
});


@override $GeometryViewModelCopyWith<$Res>? get geometry;

}
/// @nodoc
class __$PlaceViewModelCopyWithImpl<$Res>
    implements _$PlaceViewModelCopyWith<$Res> {
  __$PlaceViewModelCopyWithImpl(this._self, this._then);

  final _PlaceViewModel _self;
  final $Res Function(_PlaceViewModel) _then;

/// Create a copy of PlaceViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? name = null,Object? vicinity = null,Object? geometry = freezed,}) {
  return _then(_PlaceViewModel(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,vicinity: null == vicinity ? _self.vicinity : vicinity // ignore: cast_nullable_to_non_nullable
as String,geometry: freezed == geometry ? _self.geometry : geometry // ignore: cast_nullable_to_non_nullable
as GeometryViewModel?,
  ));
}

/// Create a copy of PlaceViewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeometryViewModelCopyWith<$Res>? get geometry {
    if (_self.geometry == null) {
    return null;
  }

  return $GeometryViewModelCopyWith<$Res>(_self.geometry!, (value) {
    return _then(_self.copyWith(geometry: value));
  });
}
}

// dart format on
