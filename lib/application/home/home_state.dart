part of 'home_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class HomeState with _$HomeState {
  const factory HomeState({
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
  }) = _HomeState;
  factory HomeState.initial({
    required String apiBaseUrl,
    required String apiKey,
    required AppStateNotifier appStateNotifier,
  }) =>
      HomeState(
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
      );
}
