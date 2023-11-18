part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.onDateChange(
      {required DateTime selectedDate,
      required bool isStartDate}) = _OnDateChange;
}
