import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../domain/core/constants/string_constants.dart';
import '../../core/widgets/custom_textfield.dart';
import '../../core/widgets/primary_button.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100.w,
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Form(
              child: Card(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      HomeScreenConstants.selectDate,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 17.sp,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                    SizedBox(height: 2.h),
                    PrimaryTextField(
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
                      fillColor: Theme.of(context).colorScheme.onBackground,
                      hintText: HomeScreenConstants.startDateHint,
                      cursorColor: Colors.transparent,
                      keyboardType: TextInputType.none,
                      onTap: () {
                        TimePickerDialog(initialTime: TimeOfDay.now());
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
                    SizedBox(
                      height: 1.h,
                    ),
                    PrimaryTextField(
                      showCursor: false,
                      inputWithLabel: true,
                      labelText: HomeScreenConstants.endDate,
                      labelStyle:
                          Theme.of(context).textTheme.bodySmall!.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onTertiaryContainer,
                                fontSize: 15.sp,
                              ),
                      fillColor: Theme.of(context).colorScheme.onBackground,
                      hintText: HomeScreenConstants.endDateHint,
                      cursorColor: Colors.transparent,
                      keyboardType: TextInputType.none,
                      onTap: () {
                        TimePickerDialog(initialTime: TimeOfDay.now());
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
                    SizedBox(
                      height: 2.h,
                    ),
                    Center(
                      child: PrimaryButton(
                        width: 40.w,
                        height: 6.h,
                        text: 'Get Started',
                        function: () {},
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        borderColor: Colors.transparent,
                        textColor: Theme.of(context).colorScheme.secondary,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
