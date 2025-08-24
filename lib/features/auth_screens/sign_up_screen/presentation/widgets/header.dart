// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meetmax/core/constant/icons.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';
import 'package:meetmax/features/auth_screens/sign_up_screen/presentation/widgets/language_selection_container.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final Style = Theme.of(context).textTheme;
    return Row(
      children: [
        Image.asset(AppIcons.meetmaxIcon, height: 16.h, width: 16.h),
        SizedBox(width: 6.w),
        Text(
          "Meetmax",
          style: Style.labelMedium!.copyWith(
            color: AppColors.logo,
            fontWeight: FontWeight.w500,
          ),
        ),

        Spacer(),

        LanguageSelectionContainer(),
      ],
    );
  }
}
