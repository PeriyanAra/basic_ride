import 'package:basic_ride/common/common.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.loaded());

  void changePassengersCount(ValueChangeTypes valueChangeType) {
    switch (valueChangeType) {
      case ValueChangeTypes.increment:
        final count = state.passengersCount + 1;
        if (count > 10) return;

        emit(state.copyWith(passengersCount: count));
        break;

      case ValueChangeTypes.decrement:
        final count = state.passengersCount - 1;

        if (count < 1) return;
        emit(state.copyWith(passengersCount: count));
        break;
    }
  }

  void setEndDate(String selectedDate) {
    emit(state.copyWith(endDate: selectedDate));
  }

  void setStartDate(String selectedDate) {
    emit(state.copyWith(startDate: selectedDate));
  }
}
