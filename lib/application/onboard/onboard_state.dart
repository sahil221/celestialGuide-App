part of 'onboard_bloc.dart';

@freezed
class OnboardState with _$OnboardState {
  const factory OnboardState({
    required bool isLoading,
    required bool isSuccess,
    required bool isFailed,
    required bool noUse,
    required int currentPage,
    required PageController pageController,
  }) = _OnBoardState;
  factory OnboardState.initial() => OnboardState(
        isLoading: false,
        isSuccess: false,
        isFailed: false,
        noUse: false,
        currentPage: 0,
        pageController: PageController(),
      );
}
