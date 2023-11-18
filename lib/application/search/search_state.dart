part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required bool isFailed,
    required bool isSuccessful,
    required bool isDarkMode,
    required bool noUse,
    required bool hasMoreData,
    required String responseMsg,
    required String lastDateFetched,
    required AstronomyRepository astronomyRepository,
    required List<AstronomyDto> lsOfAstronomyData,
    required ScrollController scrollController,
    required TextEditingController startDateController,
    required TextEditingController endDateController,
    DateTime? selectedStartDate,
    DateTime? selectedEndDate,
  }) = _SearchState;
  factory SearchState.initial({
    required AppStateNotifier appStateNotifier,
    required String apiBaseUrl,
    required String apiKey,
  }) =>
      SearchState(
        isLoading: false,
        isFailed: false,
        isSuccessful: false,
        isDarkMode: appStateNotifier.isDarkModeSelected,
        noUse: false,
        lastDateFetched: '',
        responseMsg: '',
        astronomyRepository: IAstronomyRepository(apiBaseUrl, apiKey),
        lsOfAstronomyData: [],
        scrollController: ScrollController(),
        hasMoreData: false,
        startDateController: TextEditingController(),
        endDateController: TextEditingController(),
      );
}
