import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../domain/core/constants/assets_constants.dart';

class OnBoardContent extends StatelessWidget {
  final String tagLine;
  final String tagLineDesc;
  final String bgImage;
  const OnBoardContent({
    super.key,
    required this.tagLine,
    required this.tagLineDesc,
    required this.bgImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              SizedBox(
                height: 100.h,
                width: 100.w,
                child: Image.asset(
                  bgImage,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 100.h,
                width: 100.w,
                color: Colors.black.withOpacity(0.5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Center(
                      child: Image.asset(
                        AssetConstants.logo,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      tagLine,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                            fontSize: 17.sp,
                          ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      tagLineDesc,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: const Color(0xFFDDDDDD),
                            fontSize: 16.sp,
                            height: 1.7,
                          ),
                    ),
                    const Spacer()
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
