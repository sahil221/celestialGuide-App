part of 'astronomy_details_bloc.dart';

@freezed
class AstronomyDetailsState with _$AstronomyDetailsState {
  const factory AstronomyDetailsState({
    required bool isLoading,
    required bool isFailed,
    required bool isSuccessful,
    required String responseMsg,
    required String selectedDate,
    required AstronomyRepository astronomyRepository,
    AstronomyDto? astronomyData,
  }) = _AstronomyDetailsState;
  factory AstronomyDetailsState.initial({
    required String selectedDate,
    required AppStateNotifier appStateNotifier,
    required String apiBaseUrl,
    required String apiKey,
  }) =>
      AstronomyDetailsState(
        isLoading: false,
        isFailed: false,
        isSuccessful: false,
        responseMsg: '',
        selectedDate: selectedDate,
        astronomyRepository: IAstronomyRepository(
          apiBaseUrl,
          apiKey,
        ),
      );
}
