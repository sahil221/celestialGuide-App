import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../application/astronomy_details/astronomy_details_bloc.dart';
import '../../domain/core/configs/app_config.dart';
import '../../domain/core/configs/injection.dart';
import '../../domain/core/constants/assets_constants.dart';
import '../../domain/core/services/navigation_services/navigation_service.dart';
import '../../domain/core/services/navigation_services/routers/route_name.dart';
import '../../infrastructure/enum/media_type_enum.dart';

class AstronomyDetailsScreen extends StatelessWidget {
  final String selectedDate;
  const AstronomyDetailsScreen({super.key, required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    final AppStateNotifier appStateNotifier =
        Provider.of<AppStateNotifier>(context);
    final String apiBaseUrl = AppConfig.of(context)!.nasaApiEndPoint;
    final String apiKey = AppConfig.of(context)!.nasaApiKey;
    return BlocProvider(
      create: (context) => AstronomyDetailsBloc(AstronomyDetailsState.initial(
          selectedDate: selectedDate,
          appStateNotifier: appStateNotifier,
          apiBaseUrl: apiBaseUrl,
          apiKey: apiKey))
        ..add(const AstronomyDetailsEvent.init()),
      child: const AstronomyDetailsScreenConsumer(),
    );
  }
}

class AstronomyDetailsScreenConsumer extends StatelessWidget {
  const AstronomyDetailsScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AstronomyDetailsBloc, AstronomyDetailsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            foregroundColor: Theme.of(context).colorScheme.tertiaryContainer,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Text(
              state.astronomyData == null
                  ? 'Loading...'
                  : state.astronomyData!.title,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.tertiaryContainer),
            ),
          ),
          body: state.isLoading
              ? Column(
                  children: [
                    Expanded(
                        child: Center(
                      child: Image.asset(AssetConstants.loader),
                    )),
                  ],
                )
              : !state.isLoading && state.astronomyData == null
                  ? Column(
                      children: [
                        Expanded(
                            child: Center(
                          child: Image.asset(AssetConstants.noData),
                        )),
                      ],
                    )
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              if (state.astronomyData!.mediaType ==
                                  MediaTypeEnum.VIDEO.name.toLowerCase()) {
                                try {
                                  await launchUrl(
                                      Uri.parse(state.astronomyData!.url));
                                } catch (e) {
                                  //
                                }
                              } else {
                                navigator<NavigationService>().navigateTo(
                                  CoreRoutes.mediaViewRoute,
                                  queryParams: {
                                    'url': state.astronomyData!.url,
                                    'mediaType': state.astronomyData!.mediaType,
                                  },
                                );
                              }
                            },
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: 100.w,
                                  height: 30.h,
                                  child: CachedNetworkImage(
                                    imageUrl: state.astronomyData!.mediaType ==
                                            MediaTypeEnum.IMAGE.name
                                                .toLowerCase()
                                        ? state.astronomyData!.url
                                        : state.astronomyData!.thumbnailUrl!,
                                    placeholder: (context, url) =>
                                        Shimmer.fromColors(
                                      baseColor: Colors.grey[300]!,
                                      highlightColor: Colors.grey[400]!,
                                      child: Container(
                                        height: 30.h,
                                        width: 100.w,
                                        padding: EdgeInsets.all(4.w),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        Container(
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
                                if (state.astronomyData!.mediaType ==
                                    MediaTypeEnum.VIDEO.name.toLowerCase())
                                  Container(
                                    color: Colors.black.withOpacity(0.4),
                                    width: 100.w,
                                    height: 30.h,
                                    child: Center(
                                      child: Icon(
                                        Icons.play_circle,
                                        size: 30.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                    ),
                                  )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 1.h, horizontal: 4.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.astronomyData == null
                                      ? 'Loading...'
                                      : state.astronomyData!.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: 17.sp,
                                      ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  state.astronomyData == null
                                      ? 'Loading...'
                                      : state.astronomyData!.date,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiaryContainer,
                                        fontSize: 16.sp,
                                      ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  state.astronomyData == null
                                      ? 'Loading...'
                                      : state.astronomyData!.explanation,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        height: 1.5,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiaryContainer,
                                        fontSize: 16.sp,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
        );
      },
    );
  }
}
