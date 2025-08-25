// ignore_for_file: use_full_hex_values_for_flutter_colors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meetmax/core/constant/icons.dart';
import 'package:meetmax/core/constant/padding.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';
import 'package:meetmax/features/auth_screens/sign_up_screen/presentation/widgets/box_header.dart';
import 'package:meetmax/features/auth_screens/sign_up_screen/presentation/widgets/customButton.dart';
import 'package:meetmax/features/auth_screens/sign_up_screen/presentation/widgets/genderContainer.dart';
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
        child: SingleChildScrollView(
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
                    BoxHeader(),
                    SizedBox(height: 24.h),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Your Email",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            AppIcons.mailICon,
                            height: 16.h,
                            width: 16.w,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 14.h),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Your Name",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            AppIcons.smiley,
                            height: 16.h,
                            width: 16.w,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 14.h),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Create Password",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            AppIcons.lockICon,
                            height: 16.h,
                            width: 16.w,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 14.h),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Date of birth",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            AppIcons.calenderIcon,
                            height: 16.h,
                            width: 16.w,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Gendercontainer(),
                    SizedBox(height: 20.h),

                    Custombutton(),

                    SizedBox(height: 20.h),

                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account? ",
                            style: Style.labelMedium!.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.secondary,
                            ),
                          ),
                          TextSpan(
                            onEnter: (event) {
                              // route change
                            },
                            text: "Sign In",
                            style: Style.labelMedium!.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.onPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/**
 https://www.figma.com/design/Tgm4uk1Mzi2Nj3HhmHK37h/Mobile-Developer-Task--Copy-?node-id=3693-839&m=dev
 */
