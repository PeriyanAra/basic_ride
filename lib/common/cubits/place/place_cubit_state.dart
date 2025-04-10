part of 'place_cubit.dart';

@freezed
sealed class PlaceCubitState with _$PlaceCubitState {
  const factory PlaceCubitState.loading({
    required SearchViewModel? pickupPlace,
    required SearchViewModel? destinationPlace,
  }) = PlaceCubitLoadingState;

  const factory PlaceCubitState.loaded({
    required SearchViewModel? pickupPlace,
    required SearchViewModel? destinationPlace,
  }) = PlaceCubitLoadedState;

  const factory PlaceCubitState.error({
    required SearchViewModel? pickupPlace,
    required SearchViewModel? destinationPlace,
  }) = PlaceCubitErrorState;
}
