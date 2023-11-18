import 'package:bloc/bloc.dart';
import 'package:chewie/chewie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/video_player.dart';

import '../../domain/core/configs/app_config.dart';

part 'media_view_event.dart';
part 'media_view_state.dart';
part 'media_view_bloc.freezed.dart';

class MediaViewBloc extends Bloc<MediaViewEvent, MediaViewState> {
  @override
  Future<void> close() async {
    try {
      if (state.isVideo) {
        state.videoPlayerController!.dispose();
      }
    } catch (error) {
      //
    }
    super.close();
  }

  MediaViewBloc(MediaViewState initState) : super(initState) {
    on<_Init>((event, emit) async {
      if (state.isVideo) {
        VideoPlayerController controller =
            await VideoPlayerController.networkUrl(Uri.parse(
                'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4'));
        await controller.initialize().then((value) {
          ChewieController chewieController =
              ChewieController(videoPlayerController: controller);
          add(
            MediaViewEvent.emitFromAnywhere(
              state: state.copyWith(
                videoPlayerController: controller,
                chewieController: chewieController,
              ),
            ),
          );
        });
        // await controller.play();

        print('object');
      }
    });
    on<_EmitFromAnywhere>((event, emit) {
      emit(event.state);
    });
  }
}
