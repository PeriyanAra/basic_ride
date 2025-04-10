// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchViewModel {

 PlaceViewModel? get place; List<PlaceSearchViewModel> get placeSearchResults;
/// Create a copy of SearchViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchViewModelCopyWith<SearchViewModel> get copyWith => _$SearchViewModelCopyWithImpl<SearchViewModel>(this as SearchViewModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchViewModel&&(identical(other.place, place) || other.place == place)&&const DeepCollectionEquality().equals(other.placeSearchResults, placeSearchResults));
}


@override
int get hashCode => Object.hash(runtimeType,place,const DeepCollectionEquality().hash(placeSearchResults));

@override
String toString() {
  return 'SearchViewModel(place: $place, placeSearchResults: $placeSearchResults)';
}


}

/// @nodoc
abstract mixin class $SearchViewModelCopyWith<$Res>  {
  factory $SearchViewModelCopyWith(SearchViewModel value, $Res Function(SearchViewModel) _then) = _$SearchViewModelCopyWithImpl;
@useResult
$Res call({
 PlaceViewModel? place, List<PlaceSearchViewModel> placeSearchResults
});


$PlaceViewModelCopyWith<$Res>? get place;

}
/// @nodoc
class _$SearchViewModelCopyWithImpl<$Res>
    implements $SearchViewModelCopyWith<$Res> {
  _$SearchViewModelCopyWithImpl(this._self, this._then);

  final SearchViewModel _self;
  final $Res Function(SearchViewModel) _then;

/// Create a copy of SearchViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? place = freezed,Object? placeSearchResults = null,}) {
  return _then(_self.copyWith(
place: freezed == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as PlaceViewModel?,placeSearchResults: null == placeSearchResults ? _self.placeSearchResults : placeSearchResults // ignore: cast_nullable_to_non_nullable
as List<PlaceSearchViewModel>,
  ));
}
/// Create a copy of SearchViewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceViewModelCopyWith<$Res>? get place {
    if (_self.place == null) {
    return null;
  }

  return $PlaceViewModelCopyWith<$Res>(_self.place!, (value) {
    return _then(_self.copyWith(place: value));
  });
}
}


/// @nodoc


class _SearchViewModel implements SearchViewModel {
  const _SearchViewModel({required this.place, required final  List<PlaceSearchViewModel> placeSearchResults}): _placeSearchResults = placeSearchResults;
  

@override final  PlaceViewModel? place;
 final  List<PlaceSearchViewModel> _placeSearchResults;
@override List<PlaceSearchViewModel> get placeSearchResults {
  if (_placeSearchResults is EqualUnmodifiableListView) return _placeSearchResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_placeSearchResults);
}


/// Create a copy of SearchViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchViewModelCopyWith<_SearchViewModel> get copyWith => __$SearchViewModelCopyWithImpl<_SearchViewModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchViewModel&&(identical(other.place, place) || other.place == place)&&const DeepCollectionEquality().equals(other._placeSearchResults, _placeSearchResults));
}


@override
int get hashCode => Object.hash(runtimeType,place,const DeepCollectionEquality().hash(_placeSearchResults));

@override
String toString() {
  return 'SearchViewModel(place: $place, placeSearchResults: $placeSearchResults)';
}


}

/// @nodoc
abstract mixin class _$SearchViewModelCopyWith<$Res> implements $SearchViewModelCopyWith<$Res> {
  factory _$SearchViewModelCopyWith(_SearchViewModel value, $Res Function(_SearchViewModel) _then) = __$SearchViewModelCopyWithImpl;
@override @useResult
$Res call({
 PlaceViewModel? place, List<PlaceSearchViewModel> placeSearchResults
});


@override $PlaceViewModelCopyWith<$Res>? get place;

}
/// @nodoc
class __$SearchViewModelCopyWithImpl<$Res>
    implements _$SearchViewModelCopyWith<$Res> {
  __$SearchViewModelCopyWithImpl(this._self, this._then);

  final _SearchViewModel _self;
  final $Res Function(_SearchViewModel) _then;

/// Create a copy of SearchViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? place = freezed,Object? placeSearchResults = null,}) {
  return _then(_SearchViewModel(
place: freezed == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as PlaceViewModel?,placeSearchResults: null == placeSearchResults ? _self._placeSearchResults : placeSearchResults // ignore: cast_nullable_to_non_nullable
as List<PlaceSearchViewModel>,
  ));
}

/// Create a copy of SearchViewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceViewModelCopyWith<$Res>? get place {
    if (_self.place == null) {
    return null;
  }

  return $PlaceViewModelCopyWith<$Res>(_self.place!, (value) {
    return _then(_self.copyWith(place: value));
  });
}
}

// dart format on
