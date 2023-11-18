part of 'media_view_bloc.dart';

@freezed
class MediaViewState with _$MediaViewState {
  const factory MediaViewState({
    required bool isDarkMode,
    required bool isVideo,
    required bool noUse,
    required String url,
    VideoPlayerController? videoPlayerController,
    ChewieController? chewieController,
  }) = _MediaViewState;
  factory MediaViewState.initial(
          {required String url,
          required bool isVideo,
          required AppStateNotifier appStateNotifier}) =>
      MediaViewState(
        isDarkMode: appStateNotifier.isDarkModeSelected,
        isVideo: isVideo,
        url: url,
        noUse: false,
      );
}
