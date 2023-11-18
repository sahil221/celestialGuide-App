import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../application/onboard/onboard_bloc.dart';
import '../../domain/core/configs/app_config.dart';
import '../../domain/core/configs/injection.dart';
import '../../domain/core/constants/assets_constants.dart';
import '../../domain/core/constants/string_constants.dart';
import '../../domain/core/services/navigation_services/navigation_service.dart';
import '../../domain/core/services/navigation_services/routers/route_name.dart';
import '../../domain/core/services/storage_services/onboarding_storage_service.dart';
import '../core/widgets/primary_button.dart';
import 'widgets/onboard_screen_content.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardBloc(OnboardState.initial()),
      child: const OnboardScreenConsumer(),
    );
  }
}

class OnboardScreenConsumer extends StatelessWidget {
  const OnboardScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardBloc, OnboardState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          body: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    PageView(
                      controller: state.pageController,
                      physics: const BouncingScrollPhysics(),
                      onPageChanged: (int page) {
                        context.read<OnboardBloc>().add(
                              OnboardEvent.emitFromAnywhere(
                                state: state.copyWith(
                                  currentPage: page,
                                ),
                              ),
                            );
                      },
                      children: [
                        OnBoardContent(
                          bgImage: AssetConstants.onboard1,
                          tagLine: OnboardScreenConstants.tagLine1,
                          tagLineDesc: OnboardScreenConstants.tagLine1Desc,
                        ),
                        OnBoardContent(
                          bgImage: AssetConstants.onboard2,
                          tagLine: OnboardScreenConstants.tagLine2,
                          tagLineDesc: OnboardScreenConstants.tagLine2Desc,
                        ),
                        OnBoardContent(
                          bgImage: AssetConstants.onboard3,
                          tagLine: OnboardScreenConstants.tagLine3,
                          tagLineDesc: OnboardScreenConstants.tagLine3Desc,
                        ),
                      ],
                    ),
                    Positioned.fill(
                      bottom: 4.h,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.w),
                          child: state.currentPage == 2
                              ? PrimaryButton(
                                  text: 'Get Started',
                                  function: () async {
                                    await OnboardingStorageService
                                        .updateOnboardingCompleted(
                                      isOnboardingCompleted: true,
                                    );
                                    Provider.of<AppStateNotifier>(context,
                                            listen: false)
                                        .updateAfterOnBoardCompletedChange(
                                            isOnboardCompleted: true);
                                    navigator<NavigationService>()
                                        .navigateTo(CoreRoutes.homeRoute);
                                  },
                                  backgroundColor:
                                      Theme.of(context).colorScheme.primary,
                                  borderColor: Colors.transparent,
                                  textColor:
                                      Theme.of(context).colorScheme.secondary,
                                )
                              : Container(
                                  margin: EdgeInsets.only(bottom: 5.h),
                                  child: SmoothPageIndicator(
                                    count: 3,
                                    controller: state.pageController,
                                    onDotClicked: (index) {
                                      context.read<OnboardBloc>().add(
                                          OnboardEvent.emitFromAnywhere(
                                              state: state.copyWith(
                                                  currentPage: index)));
                                      state.pageController.animateToPage(
                                        index,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeInOut,
                                      );
                                    },
                                    effect: ExpandingDotsEffect(
                                      spacing: 3.w,
                                      dotWidth: 2.5.w,
                                      dotHeight: 2.5.w,
                                      dotColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      activeDotColor:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
