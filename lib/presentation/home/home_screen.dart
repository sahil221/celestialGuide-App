import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../application/home/home_bloc.dart';
import '../../domain/core/configs/app_config.dart';
import '../../domain/core/configs/injection.dart';
import '../../domain/core/constants/assets_constants.dart';
import '../../domain/core/constants/string_constants.dart';
import '../../domain/core/services/navigation_services/navigation_service.dart';
import '../../domain/core/services/navigation_services/routers/route_name.dart';
import '../../infrastructure/enum/media_type_enum.dart';
import '../core/widgets/custom_textfield.dart';
import '../core/widgets/shimmer_data_card.dart';
import '../core/common/astronomy_data_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppStateNotifier appStateNotifier =
        Provider.of<AppStateNotifier>(context);
    final String apiBaseUrl = AppConfig.of(context)!.nasaApiEndPoint;
    final String apiKey = AppConfig.of(context)!.nasaApiKey;
    return BlocProvider(
      create: (context) => HomeBloc(HomeState.initial(
        apiBaseUrl: apiBaseUrl,
        apiKey: apiKey,
        appStateNotifier: appStateNotifier,
      ))
        ..add(const HomeEvent.init()),
      child: const HomeScreenConsumer(),
    );
  }
}

class HomeScreenConsumer extends StatelessWidget {
  const HomeScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                child: CircleAvatar(
                                  radius: 3.w,
                                  backgroundColor:
                                      Theme.of(context).colorScheme.primary,
                                  child: Text(
                                    'C',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 15.sp,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 2.5.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${HomeScreenConstants.hello}, ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiaryContainer,
                                          fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 0.5.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        HomeScreenConstants.celestialVoyager,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      SvgPicture.asset(
                                        AssetConstants.hello,
                                        width: 5.w,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                              onTap: () async {
                                await navigator<NavigationService>()
                                    .navigateTo(CoreRoutes.profileRoute);
                                context
                                    .read<HomeBloc>()
                                    .add(const HomeEvent.onLoad());
                              },
                              child: Icon(
                                Icons.person_3_outlined,
                                color: Theme.of(context).colorScheme.primary,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      PrimaryTextField(
                        fillColor: Theme.of(context).colorScheme.onBackground,
                        hintText: HomeScreenConstants.searchPost,
                        isBottomSpace: false,
                        keyboardType: TextInputType.none,
                        customContentPadding: EdgeInsets.all(3.w),
                        onTap: () {
                          navigator<NavigationService>()
                              .navigateTo(CoreRoutes.searchRoute);
                        },
                        prefixIcon: Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.w),
                          child: SvgPicture.asset(
                            AssetConstants.search,
                            width: 5.w,
                            color: const Color(0xFF888888),
                          ),
                        ),
                        hintStyle:
                            Theme.of(context).textTheme.bodySmall!.copyWith(
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16.sp,
                                  color: const Color(0xFF888888),
                                ),
                        inputBorderRadius: 12,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  state.isLoading
                      ? Expanded(
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return const ShimmerDataCard();
                            },
                            separatorBuilder: (context, index) => SizedBox(
                              height: 2.h,
                            ),
                            itemCount: 3,
                          ),
                        )
                      : Expanded(
                          child: ListView.separated(
                            controller: state.scrollController,
                            itemBuilder: (context, index) {
                              int mainIndex = index;
                              if (mainIndex < state.lsOfAstronomyData.length) {
                                return AstronomyDataCard(
                                  date: state.lsOfAstronomyData[index].date,
                                  imgUrl: state.lsOfAstronomyData[index]
                                              .mediaType ==
                                          MediaTypeEnum.IMAGE.name.toLowerCase()
                                      ? state.lsOfAstronomyData[index].url
                                      : state.lsOfAstronomyData[index]
                                          .thumbnailUrl!,
                                  title: state.lsOfAstronomyData[index].title,
                                  desc: state
                                      .lsOfAstronomyData[index].explanation,
                                  // isDarkMode: state.isDarkMode,
                                );
                              } else {
                                return const ShimmerDataCard();
                              }
                            },
                            separatorBuilder: (context, index) => SizedBox(
                              height: 2.h,
                            ),
                            itemCount: state.lsOfAstronomyData.length +
                                (state.hasMoreData ? 5 : 0),
                          ),
                        ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
