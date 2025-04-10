part of 'home_cubit.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.loaded({
    @Default(1) int passengersCount,
    String? startDate,
    String? endDate,
  }) = HomeLoadedState;
}
