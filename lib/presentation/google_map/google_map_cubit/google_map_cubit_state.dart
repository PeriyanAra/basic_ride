part of 'google_map_cubit.dart';

@freezed
sealed class GoogleMapCubitState with _$GoogleMapCubitState {
  const factory GoogleMapCubitState.loading() =
      GoogleMapCubitLoadingState;

  const factory GoogleMapCubitState.loaded({
    required Polyline polyline,
    required List<Marker> markers,
  }) = GoogleMapCubitLoadedState;

  const factory GoogleMapCubitState.error({
    required String errorMessage,
  }) = GoogleMapCubitErrorState;
}
