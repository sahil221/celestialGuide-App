import 'package:cached_network_image/cached_network_image.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

import '../../application/media_view/media_view_bloc.dart';
import '../../domain/core/configs/app_config.dart';
import '../../domain/core/constants/assets_constants.dart';

class MediaViewScreen extends StatelessWidget {
  final String url;
  final bool isVideo;
  const MediaViewScreen({super.key, required this.url, required this.isVideo});

  @override
  Widget build(BuildContext context) {
    final AppStateNotifier appStateNotifier =
        Provider.of<AppStateNotifier>(context);
    print('isVideo: ${isVideo}');
    return BlocProvider(
      create: (context) => MediaViewBloc(
        MediaViewState.initial(
          url: url,
          isVideo: isVideo,
          appStateNotifier: appStateNotifier,
        ),
      )..add(const MediaViewEvent.init()),
      child: const MediaViewScreenConsumer(),
    );
  }
}

class MediaViewScreenConsumer extends StatelessWidget {
  const MediaViewScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MediaViewBloc, MediaViewState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            elevation: 0,
            foregroundColor: Colors.white,
            backgroundColor: Colors.black,
          ),
          body: Center(
            child: state.isVideo
                ? state.isVideo && state.videoPlayerController == null
                    ? Image.asset(AssetConstants.onboard1)
                    : state.videoPlayerController!.value.isInitialized
                        ? AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Chewie(controller: state.chewieController!),
                          )
                        : Image.asset(AssetConstants.loader)
                : CachedNetworkImage(
                    imageUrl: state.url,
                    placeholder: (context, url) => Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[400]!,
                      child: Container(
                        height: 30.h,
                        width: 100.w,
                        padding: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    errorWidget: (context, url, error) => Container(
                        height: 100.h,
                        width: 100.w,
                        color: Colors.grey.withOpacity(0.5),
                        child: Icon(
                          Icons.photo,
                          size: 30.sp,
                          color: Colors.white,
                        )),
                    fit: BoxFit.cover,
                  ),
          ),
        );
      },
    );
  }
}

// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class MediaViewScreen extends StatefulWidget {
//   const MediaViewScreen({
//     super.key,
//   });

//   @override
//   State<MediaViewScreen> createState() => _MediaViewScreenState();
// }

// class _MediaViewScreenState extends State<MediaViewScreen> {
//   late VideoPlayerController _videoPlayerController;

//   late ChewieController _chewieController;

//   @override
//   void initState() {
//     super.initState();

//     _videoPlayerController = VideoPlayerController.networkUrl(
//         Uri.parse('https://www.youtube.com/watch?v=0c23odyAUdg'));

//     _videoPlayerController.initialize().then(
//           (_) => setState(
//             () => _chewieController = ChewieController(
//               videoPlayerController: _videoPlayerController,
//               aspectRatio: 16 / 9,
//             ),
//           ),
//         );
//   }

//   @override
//   void dispose() {
//     _videoPlayerController.dispose();
//     _chewieController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'NETWORK',
//           style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//         const Divider(),
//         AspectRatio(
//           aspectRatio: 16 / 9,
//           child: Chewie(controller: _chewieController),
//         ),
//       ],
//     );
//   }
// }
