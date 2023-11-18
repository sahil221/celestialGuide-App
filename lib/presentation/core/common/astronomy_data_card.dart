import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

import '../../../domain/core/configs/app_config.dart';
import '../../../domain/core/configs/injection.dart';
import '../../../domain/core/constants/assets_constants.dart';
import '../../../domain/core/constants/string_constants.dart';
import '../../../domain/core/services/navigation_services/navigation_service.dart';
import '../../../domain/core/services/navigation_services/routers/route_name.dart';

class AstronomyDataCard extends StatelessWidget {
  final String title;
  final String desc;
  final String imgUrl;
  final String date;
  const AstronomyDataCard({
    super.key,
    required this.title,
    required this.desc,
    required this.imgUrl,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        Provider.of<AppStateNotifier>(context).isDarkModeSelected;
    return GestureDetector(
      onTap: () {
        navigator<NavigationService>().navigateTo(
            CoreRoutes.astronomyDetailsRoute,
            queryParams: {'selectedDate': date});
      },
      child: Container(
        width: 100.w,
        margin: EdgeInsets.only(bottom: 1.h),
        child: Container(
          padding:
              EdgeInsets.only(left: 4.w, right: 4.w, bottom: 2.h, top: 1.h),
          decoration: BoxDecoration(
            color:
                isDarkMode ? Theme.of(context).colorScheme.onBackground : null,
            border: isDarkMode
                ? null
                : Border.all(
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                // tileColor: Colors.yellow,
                contentPadding: EdgeInsets.zero,
                visualDensity: const VisualDensity(horizontal: -4),
                leading: CircleAvatar(
                  radius: 4.w,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                        color: Theme.of(context).colorScheme.primary,
                        height: 100.h,
                        width: 100.h,
                        child: Image.asset(
                          AssetConstants.logo,
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                title: Text(
                  AppConstants.appName,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.tertiaryContainer),
                ),
                trailing: Text(
                  date,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 16.sp,
                        color: Theme.of(context).colorScheme.tertiaryContainer,
                      ),
                ),

                // trailing: SvgPicture.asset(AssetConstants.more),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 25.h,
                      width: 100.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl: imgUrl,
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
                              color: Theme.of(context).primaryColor,
                              child: const Icon(
                                Icons.person,
                                color: Colors.white,
                              )),
                          fit: BoxFit.cover,
                        ),
                      )),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 17.sp,
                        color: Theme.of(context).colorScheme.background),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Text(
                    desc,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16.sp,
                          color:
                              Theme.of(context).colorScheme.tertiaryContainer,
                          overflow: TextOverflow.ellipsis,
                        ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
