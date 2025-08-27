import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meetmax/core/constant/icons.dart';
import 'package:meetmax/core/constant/padding.dart';
import 'package:meetmax/core/routes/route_name.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';
import 'package:meetmax/features/auth_screens/sign_up_screen/presentation/widgets/customButton.dart';
import 'package:meetmax/features/auth_screens/sign_up_screen/presentation/widgets/header.dart';

class ForgetpassScreen extends StatelessWidget {
  const ForgetpassScreen({super.key});

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
                "Forgot password?",
                style: Style.bodyLarge!.copyWith(
                  color: AppColors.logo,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Enter your details to receive a rest link",
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
                    SizedBox(height: 30.h),
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

                    SizedBox(height: 20.h),

                    Custombutton(onTap: () {}),

                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {
                        context.go(RouteName.signInScreen);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/Path 94.png",
                            height: 10.h,
                            width: 6.w,
                            color: AppColors.onPrimary,
                          ),
                          SizedBox(width: 14.w),
                          Text(
                            "Back to Sign In",
                            style: Style.bodyLarge!.copyWith(
                              fontSize: 16.sp,
                              color: AppColors.onPrimary,
                              fontWeight: FontWeight.w500,
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
