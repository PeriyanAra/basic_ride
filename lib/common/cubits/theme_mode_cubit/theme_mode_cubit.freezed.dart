// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_mode_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeModeState {

 bool get isDark;
/// Create a copy of ThemeModeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeModeStateCopyWith<ThemeModeState> get copyWith => _$ThemeModeStateCopyWithImpl<ThemeModeState>(this as ThemeModeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeModeState&&(identical(other.isDark, isDark) || other.isDark == isDark));
}


@override
int get hashCode => Object.hash(runtimeType,isDark);

@override
String toString() {
  return 'ThemeModeState(isDark: $isDark)';
}


}

/// @nodoc
abstract mixin class $ThemeModeStateCopyWith<$Res>  {
  factory $ThemeModeStateCopyWith(ThemeModeState value, $Res Function(ThemeModeState) _then) = _$ThemeModeStateCopyWithImpl;
@useResult
$Res call({
 bool isDark
});




}
/// @nodoc
class _$ThemeModeStateCopyWithImpl<$Res>
    implements $ThemeModeStateCopyWith<$Res> {
  _$ThemeModeStateCopyWithImpl(this._self, this._then);

  final ThemeModeState _self;
  final $Res Function(ThemeModeState) _then;

/// Create a copy of ThemeModeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isDark = null,}) {
  return _then(_self.copyWith(
isDark: null == isDark ? _self.isDark : isDark // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _Loaded implements ThemeModeState {
  const _Loaded({required this.isDark});
  

@override final  bool isDark;

/// Create a copy of ThemeModeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.isDark, isDark) || other.isDark == isDark));
}


@override
int get hashCode => Object.hash(runtimeType,isDark);

@override
String toString() {
  return 'ThemeModeState.loaded(isDark: $isDark)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ThemeModeStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@override @useResult
$Res call({
 bool isDark
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ThemeModeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isDark = null,}) {
  return _then(_Loaded(
isDark: null == isDark ? _self.isDark : isDark // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
