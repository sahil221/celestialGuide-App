import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

import '../../../domain/core/configs/app_config.dart';
import '../../../domain/core/constants/assets_constants.dart';
import '../../../domain/core/constants/string_constants.dart';

class ShimmerDataCard extends StatelessWidget {
  const ShimmerDataCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        Provider.of<AppStateNotifier>(context).isDarkModeSelected;
    return Container(
      // height: 40.h,
      width: 100.w,
      margin: EdgeInsets.only(bottom: 1.h),
      // color: Colors.red,
      child: Container(
        padding: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 2.h, top: 1.h),
        decoration: BoxDecoration(
          color: isDarkMode ? Theme.of(context).colorScheme.onBackground : null,
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
              trailing: SizedBox(
                width: 20.w,
                child: Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[400]!,
                  child: Container(
                    height: 1.h,
                    width: 2.w,
                    padding: EdgeInsets.all(4.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[300]),
                  ),
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
                  child: Shimmer.fromColors(
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
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[400]!,
                    child: Container(
                      height: 1.h,
                      width: 2.w,
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[300]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                SizedBox(
                  width: 80.w,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[400]!,
                    child: Container(
                      height: 1.h,
                      width: 1.5.w,
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[300]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                SizedBox(
                  width: 50.w,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[400]!,
                    child: Container(
                      height: 1.h,
                      width: 1.5.w,
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[300]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
