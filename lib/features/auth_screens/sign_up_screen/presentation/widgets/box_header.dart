import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meetmax/core/constant/icons.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';
import 'package:meetmax/features/auth_screens/sign_up_screen/presentation/widgets/custom_Auth_Mode.dart';

class BoxHeader extends StatelessWidget {
  const BoxHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final Style = Theme.of(context).textTheme;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomAuthMode(
                img: AppIcons.googleIcon,
                title: "Log in with Google",
              ),
            ),
            SizedBox(width: 13.w),
            Expanded(
              child: CustomAuthMode(
                img: AppIcons.appleIcon,
                title: "Log in with Apple",
              ),
            ),
          ],
        ),
        SizedBox(height: 24.h),

        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 2,
                color: Color(0xff4e5d7833).withValues(alpha: .2),
              ),
            ),
            SizedBox(width: 10.w),
            Text(
              "OR",
              style: Style.labelLarge!.copyWith(
                color: AppColors.logo,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Divider(
                thickness: 2,
                color: Color(0xff4e5d7833).withValues(alpha: .2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
