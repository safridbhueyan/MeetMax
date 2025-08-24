import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meetmax/core/constant/icons.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';

class LanguageSelectionContainer extends StatelessWidget {
  const LanguageSelectionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final Style = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.only(top: 4.h, bottom: 4.h, left: 10.w, right: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(color: AppColors.onSurface.withValues(alpha: .8)),
      ),
      child: Row(
        children: [
          Text(
            "English (UK)",
            style: Style.labelMedium!.copyWith(
              color: AppColors.onSecondary,
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 7.w),
          Image.asset(AppIcons.dropdownIcon, height: 12.h, width: 12.h),
        ],
      ),
    );
  }
}
