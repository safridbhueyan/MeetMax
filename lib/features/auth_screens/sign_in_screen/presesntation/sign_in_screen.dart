import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meetmax/core/constant/icons.dart';
import 'package:meetmax/core/constant/padding.dart';
import 'package:meetmax/core/routes/route_name.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';
import 'package:meetmax/features/auth_screens/sign_in_screen/presesntation/widgets/forget_section.dart';
import 'package:meetmax/features/auth_screens/sign_in_screen/presesntation/widgets/sign_in_header.dart';
import 'package:meetmax/features/auth_screens/sign_up_screen/presentation/widgets/customButton.dart';
import 'package:meetmax/features/auth_screens/sign_up_screen/presentation/widgets/header.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                "Sign In",
                style: Style.bodyLarge!.copyWith(
                  color: AppColors.logo,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Welcome back, you’ve been missed!",
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
                    SignInHeader(),
                    SizedBox(height: 24.h),
                    TextFormField(
                      style: TextStyle(color: AppColors.fillcolorTwo),

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
                      style: TextStyle(color: AppColors.fillcolorTwo),

                      decoration: InputDecoration(
                        hintText: "Create Password",
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            AppIcons.visibilityoff,
                            height: 16.h,
                            width: 16.w,
                          ),
                        ),
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

                    ForgetSection(),
                    SizedBox(height: 20.h),

                    Custombutton(onTap: () {}),

                    SizedBox(height: 20.h),

                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "You haven't any account?   ",
                            style: Style.labelMedium!.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.secondary,
                            ),
                          ),
                          TextSpan(
                            text: "Sign Up",
                            style: Style.labelMedium!.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.onPrimary,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.push(RouteName.signUPScreen);
                              },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 100.h),
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
