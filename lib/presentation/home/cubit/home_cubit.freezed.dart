// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 int get passengersCount; String? get startDate; String? get endDate;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.passengersCount, passengersCount) || other.passengersCount == passengersCount)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,passengersCount,startDate,endDate);

@override
String toString() {
  return 'HomeState(passengersCount: $passengersCount, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 int passengersCount, String? startDate, String? endDate
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? passengersCount = null,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_self.copyWith(
passengersCount: null == passengersCount ? _self.passengersCount : passengersCount // ignore: cast_nullable_to_non_nullable
as int,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class HomeLoadedState implements HomeState {
  const HomeLoadedState({this.passengersCount = 1, this.startDate, this.endDate});
  

@override@JsonKey() final  int passengersCount;
@override final  String? startDate;
@override final  String? endDate;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeLoadedStateCopyWith<HomeLoadedState> get copyWith => _$HomeLoadedStateCopyWithImpl<HomeLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoadedState&&(identical(other.passengersCount, passengersCount) || other.passengersCount == passengersCount)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,passengersCount,startDate,endDate);

@override
String toString() {
  return 'HomeState.loaded(passengersCount: $passengersCount, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $HomeLoadedStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeLoadedStateCopyWith(HomeLoadedState value, $Res Function(HomeLoadedState) _then) = _$HomeLoadedStateCopyWithImpl;
@override @useResult
$Res call({
 int passengersCount, String? startDate, String? endDate
});




}
/// @nodoc
class _$HomeLoadedStateCopyWithImpl<$Res>
    implements $HomeLoadedStateCopyWith<$Res> {
  _$HomeLoadedStateCopyWithImpl(this._self, this._then);

  final HomeLoadedState _self;
  final $Res Function(HomeLoadedState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? passengersCount = null,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(HomeLoadedState(
passengersCount: null == passengersCount ? _self.passengersCount : passengersCount // ignore: cast_nullable_to_non_nullable
as int,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
