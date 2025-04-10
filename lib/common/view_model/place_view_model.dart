import 'package:basic_ride/common/view_model/view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_view_model.freezed.dart';
part 'place_view_model.g.dart';

@freezed
sealed class PlaceViewModel with _$PlaceViewModel {
  const factory PlaceViewModel({
    @Default('') String description,
    @Default('') String name,
    @Default('') String vicinity,
    GeometryViewModel? geometry,
  }) = _PlaceViewModel;

  factory PlaceViewModel.fromJson(Map<String, Object?> json) =>
      _$PlaceViewModelFromJson(json);
}
