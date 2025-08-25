import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meetmax/core/constant/icons.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';

class Gendercontainer extends StatelessWidget {
  const Gendercontainer({super.key});

  @override
  Widget build(BuildContext context) {
    final Style = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(color: Color(0xff4e5d7833).withValues(alpha: .25)),
      ),
      child: Row(
        children: [
          Image.asset(AppIcons.maleIcon, height: 16.h, width: 16.w),
          SizedBox(width: 20.w),
          Checkbox(value: true, onChanged: (v) {}),
          SizedBox(width: 8.w),
          Text(
            "Male",
            style: Style.labelMedium!.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.secondary,
            ),
          ),
          SizedBox(width: 20.w),
          Checkbox(value: true, onChanged: (v) {}),
          SizedBox(width: 8.w),
          Text(
            "Female",
            style: Style.labelMedium!.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
