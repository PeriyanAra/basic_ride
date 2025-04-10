// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlaceCubitState {

 SearchViewModel? get pickupPlace; SearchViewModel? get destinationPlace;
/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceCubitStateCopyWith<PlaceCubitState> get copyWith => _$PlaceCubitStateCopyWithImpl<PlaceCubitState>(this as PlaceCubitState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceCubitState&&(identical(other.pickupPlace, pickupPlace) || other.pickupPlace == pickupPlace)&&(identical(other.destinationPlace, destinationPlace) || other.destinationPlace == destinationPlace));
}


@override
int get hashCode => Object.hash(runtimeType,pickupPlace,destinationPlace);

@override
String toString() {
  return 'PlaceCubitState(pickupPlace: $pickupPlace, destinationPlace: $destinationPlace)';
}


}

/// @nodoc
abstract mixin class $PlaceCubitStateCopyWith<$Res>  {
  factory $PlaceCubitStateCopyWith(PlaceCubitState value, $Res Function(PlaceCubitState) _then) = _$PlaceCubitStateCopyWithImpl;
@useResult
$Res call({
 SearchViewModel? pickupPlace, SearchViewModel? destinationPlace
});


$SearchViewModelCopyWith<$Res>? get pickupPlace;$SearchViewModelCopyWith<$Res>? get destinationPlace;

}
/// @nodoc
class _$PlaceCubitStateCopyWithImpl<$Res>
    implements $PlaceCubitStateCopyWith<$Res> {
  _$PlaceCubitStateCopyWithImpl(this._self, this._then);

  final PlaceCubitState _self;
  final $Res Function(PlaceCubitState) _then;

/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pickupPlace = freezed,Object? destinationPlace = freezed,}) {
  return _then(_self.copyWith(
pickupPlace: freezed == pickupPlace ? _self.pickupPlace : pickupPlace // ignore: cast_nullable_to_non_nullable
as SearchViewModel?,destinationPlace: freezed == destinationPlace ? _self.destinationPlace : destinationPlace // ignore: cast_nullable_to_non_nullable
as SearchViewModel?,
  ));
}
/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchViewModelCopyWith<$Res>? get pickupPlace {
    if (_self.pickupPlace == null) {
    return null;
  }

  return $SearchViewModelCopyWith<$Res>(_self.pickupPlace!, (value) {
    return _then(_self.copyWith(pickupPlace: value));
  });
}/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchViewModelCopyWith<$Res>? get destinationPlace {
    if (_self.destinationPlace == null) {
    return null;
  }

  return $SearchViewModelCopyWith<$Res>(_self.destinationPlace!, (value) {
    return _then(_self.copyWith(destinationPlace: value));
  });
}
}


/// @nodoc


class PlaceCubitLoadingState implements PlaceCubitState {
  const PlaceCubitLoadingState({required this.pickupPlace, required this.destinationPlace});
  

@override final  SearchViewModel? pickupPlace;
@override final  SearchViewModel? destinationPlace;

/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceCubitLoadingStateCopyWith<PlaceCubitLoadingState> get copyWith => _$PlaceCubitLoadingStateCopyWithImpl<PlaceCubitLoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceCubitLoadingState&&(identical(other.pickupPlace, pickupPlace) || other.pickupPlace == pickupPlace)&&(identical(other.destinationPlace, destinationPlace) || other.destinationPlace == destinationPlace));
}


@override
int get hashCode => Object.hash(runtimeType,pickupPlace,destinationPlace);

@override
String toString() {
  return 'PlaceCubitState.loading(pickupPlace: $pickupPlace, destinationPlace: $destinationPlace)';
}


}

/// @nodoc
abstract mixin class $PlaceCubitLoadingStateCopyWith<$Res> implements $PlaceCubitStateCopyWith<$Res> {
  factory $PlaceCubitLoadingStateCopyWith(PlaceCubitLoadingState value, $Res Function(PlaceCubitLoadingState) _then) = _$PlaceCubitLoadingStateCopyWithImpl;
@override @useResult
$Res call({
 SearchViewModel? pickupPlace, SearchViewModel? destinationPlace
});


@override $SearchViewModelCopyWith<$Res>? get pickupPlace;@override $SearchViewModelCopyWith<$Res>? get destinationPlace;

}
/// @nodoc
class _$PlaceCubitLoadingStateCopyWithImpl<$Res>
    implements $PlaceCubitLoadingStateCopyWith<$Res> {
  _$PlaceCubitLoadingStateCopyWithImpl(this._self, this._then);

  final PlaceCubitLoadingState _self;
  final $Res Function(PlaceCubitLoadingState) _then;

/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pickupPlace = freezed,Object? destinationPlace = freezed,}) {
  return _then(PlaceCubitLoadingState(
pickupPlace: freezed == pickupPlace ? _self.pickupPlace : pickupPlace // ignore: cast_nullable_to_non_nullable
as SearchViewModel?,destinationPlace: freezed == destinationPlace ? _self.destinationPlace : destinationPlace // ignore: cast_nullable_to_non_nullable
as SearchViewModel?,
  ));
}

/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchViewModelCopyWith<$Res>? get pickupPlace {
    if (_self.pickupPlace == null) {
    return null;
  }

  return $SearchViewModelCopyWith<$Res>(_self.pickupPlace!, (value) {
    return _then(_self.copyWith(pickupPlace: value));
  });
}/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchViewModelCopyWith<$Res>? get destinationPlace {
    if (_self.destinationPlace == null) {
    return null;
  }

  return $SearchViewModelCopyWith<$Res>(_self.destinationPlace!, (value) {
    return _then(_self.copyWith(destinationPlace: value));
  });
}
}

/// @nodoc


class PlaceCubitLoadedState implements PlaceCubitState {
  const PlaceCubitLoadedState({required this.pickupPlace, required this.destinationPlace});
  

@override final  SearchViewModel? pickupPlace;
@override final  SearchViewModel? destinationPlace;

/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceCubitLoadedStateCopyWith<PlaceCubitLoadedState> get copyWith => _$PlaceCubitLoadedStateCopyWithImpl<PlaceCubitLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceCubitLoadedState&&(identical(other.pickupPlace, pickupPlace) || other.pickupPlace == pickupPlace)&&(identical(other.destinationPlace, destinationPlace) || other.destinationPlace == destinationPlace));
}


@override
int get hashCode => Object.hash(runtimeType,pickupPlace,destinationPlace);

@override
String toString() {
  return 'PlaceCubitState.loaded(pickupPlace: $pickupPlace, destinationPlace: $destinationPlace)';
}


}

/// @nodoc
abstract mixin class $PlaceCubitLoadedStateCopyWith<$Res> implements $PlaceCubitStateCopyWith<$Res> {
  factory $PlaceCubitLoadedStateCopyWith(PlaceCubitLoadedState value, $Res Function(PlaceCubitLoadedState) _then) = _$PlaceCubitLoadedStateCopyWithImpl;
@override @useResult
$Res call({
 SearchViewModel? pickupPlace, SearchViewModel? destinationPlace
});


@override $SearchViewModelCopyWith<$Res>? get pickupPlace;@override $SearchViewModelCopyWith<$Res>? get destinationPlace;

}
/// @nodoc
class _$PlaceCubitLoadedStateCopyWithImpl<$Res>
    implements $PlaceCubitLoadedStateCopyWith<$Res> {
  _$PlaceCubitLoadedStateCopyWithImpl(this._self, this._then);

  final PlaceCubitLoadedState _self;
  final $Res Function(PlaceCubitLoadedState) _then;

/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pickupPlace = freezed,Object? destinationPlace = freezed,}) {
  return _then(PlaceCubitLoadedState(
pickupPlace: freezed == pickupPlace ? _self.pickupPlace : pickupPlace // ignore: cast_nullable_to_non_nullable
as SearchViewModel?,destinationPlace: freezed == destinationPlace ? _self.destinationPlace : destinationPlace // ignore: cast_nullable_to_non_nullable
as SearchViewModel?,
  ));
}

/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchViewModelCopyWith<$Res>? get pickupPlace {
    if (_self.pickupPlace == null) {
    return null;
  }

  return $SearchViewModelCopyWith<$Res>(_self.pickupPlace!, (value) {
    return _then(_self.copyWith(pickupPlace: value));
  });
}/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchViewModelCopyWith<$Res>? get destinationPlace {
    if (_self.destinationPlace == null) {
    return null;
  }

  return $SearchViewModelCopyWith<$Res>(_self.destinationPlace!, (value) {
    return _then(_self.copyWith(destinationPlace: value));
  });
}
}

/// @nodoc


class PlaceCubitErrorState implements PlaceCubitState {
  const PlaceCubitErrorState({required this.pickupPlace, required this.destinationPlace});
  

@override final  SearchViewModel? pickupPlace;
@override final  SearchViewModel? destinationPlace;

/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceCubitErrorStateCopyWith<PlaceCubitErrorState> get copyWith => _$PlaceCubitErrorStateCopyWithImpl<PlaceCubitErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceCubitErrorState&&(identical(other.pickupPlace, pickupPlace) || other.pickupPlace == pickupPlace)&&(identical(other.destinationPlace, destinationPlace) || other.destinationPlace == destinationPlace));
}


@override
int get hashCode => Object.hash(runtimeType,pickupPlace,destinationPlace);

@override
String toString() {
  return 'PlaceCubitState.error(pickupPlace: $pickupPlace, destinationPlace: $destinationPlace)';
}


}

/// @nodoc
abstract mixin class $PlaceCubitErrorStateCopyWith<$Res> implements $PlaceCubitStateCopyWith<$Res> {
  factory $PlaceCubitErrorStateCopyWith(PlaceCubitErrorState value, $Res Function(PlaceCubitErrorState) _then) = _$PlaceCubitErrorStateCopyWithImpl;
@override @useResult
$Res call({
 SearchViewModel? pickupPlace, SearchViewModel? destinationPlace
});


@override $SearchViewModelCopyWith<$Res>? get pickupPlace;@override $SearchViewModelCopyWith<$Res>? get destinationPlace;

}
/// @nodoc
class _$PlaceCubitErrorStateCopyWithImpl<$Res>
    implements $PlaceCubitErrorStateCopyWith<$Res> {
  _$PlaceCubitErrorStateCopyWithImpl(this._self, this._then);

  final PlaceCubitErrorState _self;
  final $Res Function(PlaceCubitErrorState) _then;

/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pickupPlace = freezed,Object? destinationPlace = freezed,}) {
  return _then(PlaceCubitErrorState(
pickupPlace: freezed == pickupPlace ? _self.pickupPlace : pickupPlace // ignore: cast_nullable_to_non_nullable
as SearchViewModel?,destinationPlace: freezed == destinationPlace ? _self.destinationPlace : destinationPlace // ignore: cast_nullable_to_non_nullable
as SearchViewModel?,
  ));
}

/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchViewModelCopyWith<$Res>? get pickupPlace {
    if (_self.pickupPlace == null) {
    return null;
  }

  return $SearchViewModelCopyWith<$Res>(_self.pickupPlace!, (value) {
    return _then(_self.copyWith(pickupPlace: value));
  });
}/// Create a copy of PlaceCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchViewModelCopyWith<$Res>? get destinationPlace {
    if (_self.destinationPlace == null) {
    return null;
  }

  return $SearchViewModelCopyWith<$Res>(_self.destinationPlace!, (value) {
    return _then(_self.copyWith(destinationPlace: value));
  });
}
}

// dart format on
