import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meetmax/core/constant/icons.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';
import 'package:meetmax/features/auth_screens/sign_up_screen/Riverpod/gender_selectionProvider.dart';

class GenderContainer extends ConsumerWidget {
  const GenderContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = Theme.of(context).textTheme;
    final selectedGender = ref.watch(ismale);

    return Container(
      padding: EdgeInsets.only(left: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(color: const Color(0xff4e5d7833).withOpacity(0.25)),
      ),
      child: Row(
        children: [
          // Gender Icon
          Image.asset(AppIcons.maleIcon, height: 16.h, width: 16.w),
          SizedBox(width: 12.w),

          // Male Radio
          Row(
            children: [
              Radio<String>(
                value: "Male",
                groupValue: selectedGender,
                activeColor: AppColors.onPrimary,
                onChanged: (value) {
                  ref.read(ismale.notifier).state = value!;
                },
              ),
              Text(
                "Male",
                style: style.labelMedium!.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: selectedGender == "Male"
                      ? AppColors.secondary
                      : AppColors.secondary.withValues(alpha: 0.5),
                ),
              ),
            ],
          ),

          SizedBox(width: 20.w),

          // Female Radio
          Row(
            children: [
              Radio<String>(
                value: "Female",
                groupValue: selectedGender,
                activeColor: AppColors.onPrimary,
                onChanged: (value) {
                  ref.read(ismale.notifier).state = value!;
                },
              ),
              Text(
                "Female",
                style: style.labelMedium!.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: selectedGender == "Male"
                      ? AppColors.secondary
                      : AppColors.secondary.withValues(alpha: 0.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
