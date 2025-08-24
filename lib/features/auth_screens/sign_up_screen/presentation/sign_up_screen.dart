import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meetmax/core/constant/icons.dart';
import 'package:meetmax/core/constant/padding.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';
import 'package:meetmax/features/auth_screens/sign_up_screen/presentation/widgets/custom_Auth_Mode.dart';
import 'package:meetmax/features/auth_screens/sign_up_screen/presentation/widgets/header.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final Style = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppColors.primary.withValues(alpha: .99),
      body: Padding(
        padding: AppPadding.screenHorizontal,
        child: Column(
          children: [
            SizedBox(height: 80.h),
            Header(),
            SizedBox(height: 56.h),
            Text(
              "Getting Started",
              style: Style.bodyLarge!.copyWith(
                color: AppColors.logo,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Create an account to continue and connect\nwith the people.",
              textAlign: TextAlign.center,
              style: Style.labelLarge!.copyWith(
                color: AppColors.logo,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                color: AppColors.primary,
              ),

              child: Column(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
