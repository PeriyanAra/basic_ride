// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_map_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GoogleMapCubitState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleMapCubitState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GoogleMapCubitState()';
}


}

/// @nodoc
class $GoogleMapCubitStateCopyWith<$Res>  {
$GoogleMapCubitStateCopyWith(GoogleMapCubitState _, $Res Function(GoogleMapCubitState) __);
}


/// @nodoc


class GoogleMapCubitLoadingState implements GoogleMapCubitState {
  const GoogleMapCubitLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleMapCubitLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GoogleMapCubitState.loading()';
}


}




/// @nodoc


class GoogleMapCubitLoadedState implements GoogleMapCubitState {
  const GoogleMapCubitLoadedState({required this.polyline, required final  List<Marker> markers}): _markers = markers;
  

 final  Polyline polyline;
 final  List<Marker> _markers;
 List<Marker> get markers {
  if (_markers is EqualUnmodifiableListView) return _markers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_markers);
}


/// Create a copy of GoogleMapCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleMapCubitLoadedStateCopyWith<GoogleMapCubitLoadedState> get copyWith => _$GoogleMapCubitLoadedStateCopyWithImpl<GoogleMapCubitLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleMapCubitLoadedState&&(identical(other.polyline, polyline) || other.polyline == polyline)&&const DeepCollectionEquality().equals(other._markers, _markers));
}


@override
int get hashCode => Object.hash(runtimeType,polyline,const DeepCollectionEquality().hash(_markers));

@override
String toString() {
  return 'GoogleMapCubitState.loaded(polyline: $polyline, markers: $markers)';
}


}

/// @nodoc
abstract mixin class $GoogleMapCubitLoadedStateCopyWith<$Res> implements $GoogleMapCubitStateCopyWith<$Res> {
  factory $GoogleMapCubitLoadedStateCopyWith(GoogleMapCubitLoadedState value, $Res Function(GoogleMapCubitLoadedState) _then) = _$GoogleMapCubitLoadedStateCopyWithImpl;
@useResult
$Res call({
 Polyline polyline, List<Marker> markers
});




}
/// @nodoc
class _$GoogleMapCubitLoadedStateCopyWithImpl<$Res>
    implements $GoogleMapCubitLoadedStateCopyWith<$Res> {
  _$GoogleMapCubitLoadedStateCopyWithImpl(this._self, this._then);

  final GoogleMapCubitLoadedState _self;
  final $Res Function(GoogleMapCubitLoadedState) _then;

/// Create a copy of GoogleMapCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? polyline = null,Object? markers = null,}) {
  return _then(GoogleMapCubitLoadedState(
polyline: null == polyline ? _self.polyline : polyline // ignore: cast_nullable_to_non_nullable
as Polyline,markers: null == markers ? _self._markers : markers // ignore: cast_nullable_to_non_nullable
as List<Marker>,
  ));
}


}

/// @nodoc


class GoogleMapCubitErrorState implements GoogleMapCubitState {
  const GoogleMapCubitErrorState({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of GoogleMapCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleMapCubitErrorStateCopyWith<GoogleMapCubitErrorState> get copyWith => _$GoogleMapCubitErrorStateCopyWithImpl<GoogleMapCubitErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleMapCubitErrorState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'GoogleMapCubitState.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $GoogleMapCubitErrorStateCopyWith<$Res> implements $GoogleMapCubitStateCopyWith<$Res> {
  factory $GoogleMapCubitErrorStateCopyWith(GoogleMapCubitErrorState value, $Res Function(GoogleMapCubitErrorState) _then) = _$GoogleMapCubitErrorStateCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$GoogleMapCubitErrorStateCopyWithImpl<$Res>
    implements $GoogleMapCubitErrorStateCopyWith<$Res> {
  _$GoogleMapCubitErrorStateCopyWithImpl(this._self, this._then);

  final GoogleMapCubitErrorState _self;
  final $Res Function(GoogleMapCubitErrorState) _then;

/// Create a copy of GoogleMapCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(GoogleMapCubitErrorState(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
