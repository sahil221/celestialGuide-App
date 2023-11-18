part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isLoading,
    required bool isFailed,
    required bool isSuccessful,
    required bool isDarkModeSelected,
  }) = _ProfileState;
  factory ProfileState.initial({required AppStateNotifier appStateNotifier}) =>
      ProfileState(
        isLoading: false,
        isFailed: false,
        isSuccessful: false,
        isDarkModeSelected: appStateNotifier.isDarkModeSelected,
      );
}
