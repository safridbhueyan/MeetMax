import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';

class CustomAuthMode extends StatelessWidget {
  final String img;
  final String title;

  const CustomAuthMode({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    final Style = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: AppColors.deActiveTextColor.withValues(alpha: 0.1),
      ),

      child: Row(
        children: [
          Image.asset(img, height: 16.h, width: 16.w),

          SizedBox(width: 8.w),

          Text(
            title,
            style: Style.labelMedium!.copyWith(
              fontSize: 11.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.logo,
            ),
          ),
        ],
      ),
    );
  }
}
