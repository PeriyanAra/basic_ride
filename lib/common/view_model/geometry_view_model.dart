import 'package:basic_ride/common/view_model/view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geometry_view_model.freezed.dart';
part 'geometry_view_model.g.dart';

@freezed
sealed class GeometryViewModel with _$GeometryViewModel {
  const factory GeometryViewModel({  LocationViewModel? location}) =
      _GeometryViewModel;

  factory GeometryViewModel.fromJson(Map<String, Object?> json) =>
      _$GeometryViewModelFromJson(json);
}
