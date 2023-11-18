import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../application/search/search_bloc.dart';
import '../../domain/core/configs/app_config.dart';
import '../../domain/core/constants/assets_constants.dart';
import '../../domain/core/constants/string_constants.dart';
import '../../infrastructure/enum/media_type_enum.dart';
import '../core/widgets/custom_textfield.dart';
import '../core/common/astronomy_data_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppStateNotifier appStateNotifier =
        Provider.of<AppStateNotifier>(context);
    final String apiBaseUrl = AppConfig.of(context)!.nasaApiEndPoint;
    final String apiKey = AppConfig.of(context)!.nasaApiKey;
    return BlocProvider(
      create: (context) => SearchBloc(SearchState.initial(
          appStateNotifier: appStateNotifier,
          apiBaseUrl: apiBaseUrl,
          apiKey: apiKey)),
      child: const SearchScreenConsumer(),
    );
  }
}

class SearchScreenConsumer extends StatelessWidget {
  const SearchScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBloc, SearchState>(
      listener: (context, state) {
        print(
            'START: ${state.selectedStartDate}  END: ${state.selectedEndDate}');
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            foregroundColor: Theme.of(context).colorScheme.tertiaryContainer,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Text(
              'Search',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.tertiaryContainer),
            ),
          ),
          body: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: PrimaryTextField(
                          // width: 42.2.w,
                          controller: state.startDateController,
                          showCursor: false,
                          inputWithLabel: true,
                          labelText: HomeScreenConstants.startDate,
                          labelStyle:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiaryContainer,
                                    fontSize: 15.sp,
                                  ),
                          textStyle:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiaryContainer,
                                    fontSize: 15.5.sp,
                                  ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(right: 4.w),
                            child: Icon(
                              Icons.calendar_today,
                              size: 16.sp,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                          ),
                          fillColor: Theme.of(context).colorScheme.onBackground,
                          hintText: HomeScreenConstants.startDateHint,
                          cursorColor: Colors.transparent,
                          keyboardType: TextInputType.none,
                          onTap: () {
                            showDatePicker(
                              firstDate: DateTime(1995, 7, 15),
                              context: context,
                              initialDate: state.selectedEndDate != null
                                  ? state.selectedEndDate!
                                  : DateTime.now(),
                              lastDate: state.selectedEndDate != null
                                  ? state.selectedEndDate!
                                  : DateTime.now(), // Set the initial time.
                            ).then((value) {
                              if (value != null) {
                                context.read<SearchBloc>().add(
                                    SearchEvent.onDateChange(
                                        selectedDate: value,
                                        isStartDate: true));
                              }
                            });
                          },
                          hintStyle:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiaryContainer,
                                    fontSize: 15.sp,
                                  ),
                          isBottomSpace: false,
                          customContentPadding: EdgeInsets.all(3.w),
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'to',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                              fontSize: 15.sp,
                            ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Expanded(
                        child: PrimaryTextField(
                          // width: 42.2.w,
                          controller: state.endDateController,
                          showCursor: false,
                          inputWithLabel: true,
                          labelText: HomeScreenConstants.endDate,
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(right: 4.w),
                            child: Icon(
                              Icons.calendar_today,
                              size: 16.sp,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                          ),
                          labelStyle:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiaryContainer,
                                    fontSize: 15.sp,
                                  ),
                          textStyle:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiaryContainer,
                                    fontSize: 15.5.sp,
                                  ),
                          fillColor: Theme.of(context).colorScheme.onBackground,
                          hintText: HomeScreenConstants.startDateHint,
                          cursorColor: Colors.transparent,
                          keyboardType: TextInputType.none,
                          onTap: () {
                            showDatePicker(
                              firstDate: state.selectedStartDate != null
                                  ? state.selectedStartDate!
                                  : DateTime(1995, 7, 15),
                              context: context,
                              initialDate: DateTime.now(),
                              lastDate: DateTime.now(), // Set the initial time.
                            ).then((value) {
                              if (value != null) {
                                context.read<SearchBloc>().add(
                                    SearchEvent.onDateChange(
                                        selectedDate: value,
                                        isStartDate: false));
                              }
                            });
                          },
                          hintStyle:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiaryContainer,
                                    fontSize: 15.sp,
                                  ),
                          isBottomSpace: false,
                          customContentPadding: EdgeInsets.all(3.w),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Expanded(
                    child: state.isLoading
                        ? Center(
                            child: Image.asset(AssetConstants.loader),
                          )
                        : !state.isLoading && state.lsOfAstronomyData.isEmpty
                            ? Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(AssetConstants.search),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text(
                                      'Select dates to search',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onTertiaryContainer,
                                            fontSize: 15.sp,
                                          ),
                                    )
                                  ],
                                ),
                              )
                            : ListView.separated(
                                controller: state.scrollController,
                                itemBuilder: (context, index) {
                                  return AstronomyDataCard(
                                    date: state.lsOfAstronomyData[index].date,
                                    imgUrl: state.lsOfAstronomyData[index]
                                                .mediaType ==
                                            MediaTypeEnum.IMAGE.name
                                                .toLowerCase()
                                        ? state.lsOfAstronomyData[index].url
                                        : state.lsOfAstronomyData[index]
                                            .thumbnailUrl!,
                                    title: state.lsOfAstronomyData[index].title,
                                    desc: state
                                        .lsOfAstronomyData[index].explanation,
                                    // isDarkMode: state.isDarkMode,
                                  );
                                },
                                separatorBuilder: (context, index) => SizedBox(
                                  height: 2.h,
                                ),
                                itemCount: state.lsOfAstronomyData.length,
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
