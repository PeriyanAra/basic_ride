import 'package:basic_ride/common/view_model/view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_view_model.freezed.dart';

@freezed
sealed class SearchViewModel with _$SearchViewModel {
  const factory SearchViewModel({
    required PlaceViewModel? place,
    required List<PlaceSearchViewModel> placeSearchResults,
  }) = _SearchViewModel;

}
