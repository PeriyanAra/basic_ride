import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_search_view_model.freezed.dart';
part 'place_search_view_model.g.dart';

@freezed
sealed class PlaceSearchViewModel with _$PlaceSearchViewModel {
  const factory PlaceSearchViewModel({
    required String description,
    @JsonKey(name: 'place_id') required String placeId,
  }) = _PlaceSearchViewModel;

  factory PlaceSearchViewModel.fromJson(Map<String, Object?> json) =>
      _$PlaceSearchViewModelFromJson(json);
}
