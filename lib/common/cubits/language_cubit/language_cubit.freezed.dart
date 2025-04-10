// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LanguageCubitState {

 Locale get selectedLanguage;
/// Create a copy of LanguageCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageCubitStateCopyWith<LanguageCubitState> get copyWith => _$LanguageCubitStateCopyWithImpl<LanguageCubitState>(this as LanguageCubitState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageCubitState&&(identical(other.selectedLanguage, selectedLanguage) || other.selectedLanguage == selectedLanguage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedLanguage);

@override
String toString() {
  return 'LanguageCubitState(selectedLanguage: $selectedLanguage)';
}


}

/// @nodoc
abstract mixin class $LanguageCubitStateCopyWith<$Res>  {
  factory $LanguageCubitStateCopyWith(LanguageCubitState value, $Res Function(LanguageCubitState) _then) = _$LanguageCubitStateCopyWithImpl;
@useResult
$Res call({
 Locale selectedLanguage
});




}
/// @nodoc
class _$LanguageCubitStateCopyWithImpl<$Res>
    implements $LanguageCubitStateCopyWith<$Res> {
  _$LanguageCubitStateCopyWithImpl(this._self, this._then);

  final LanguageCubitState _self;
  final $Res Function(LanguageCubitState) _then;

/// Create a copy of LanguageCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedLanguage = null,}) {
  return _then(_self.copyWith(
selectedLanguage: null == selectedLanguage ? _self.selectedLanguage : selectedLanguage // ignore: cast_nullable_to_non_nullable
as Locale,
  ));
}

}


/// @nodoc


class LanguageCubitLoadedState implements LanguageCubitState {
  const LanguageCubitLoadedState({required this.selectedLanguage});
  

@override final  Locale selectedLanguage;

/// Create a copy of LanguageCubitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageCubitLoadedStateCopyWith<LanguageCubitLoadedState> get copyWith => _$LanguageCubitLoadedStateCopyWithImpl<LanguageCubitLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageCubitLoadedState&&(identical(other.selectedLanguage, selectedLanguage) || other.selectedLanguage == selectedLanguage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedLanguage);

@override
String toString() {
  return 'LanguageCubitState.loaded(selectedLanguage: $selectedLanguage)';
}


}

/// @nodoc
abstract mixin class $LanguageCubitLoadedStateCopyWith<$Res> implements $LanguageCubitStateCopyWith<$Res> {
  factory $LanguageCubitLoadedStateCopyWith(LanguageCubitLoadedState value, $Res Function(LanguageCubitLoadedState) _then) = _$LanguageCubitLoadedStateCopyWithImpl;
@override @useResult
$Res call({
 Locale selectedLanguage
});




}
/// @nodoc
class _$LanguageCubitLoadedStateCopyWithImpl<$Res>
    implements $LanguageCubitLoadedStateCopyWith<$Res> {
  _$LanguageCubitLoadedStateCopyWithImpl(this._self, this._then);

  final LanguageCubitLoadedState _self;
  final $Res Function(LanguageCubitLoadedState) _then;

/// Create a copy of LanguageCubitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedLanguage = null,}) {
  return _then(LanguageCubitLoadedState(
selectedLanguage: null == selectedLanguage ? _self.selectedLanguage : selectedLanguage // ignore: cast_nullable_to_non_nullable
as Locale,
  ));
}


}

// dart format on
