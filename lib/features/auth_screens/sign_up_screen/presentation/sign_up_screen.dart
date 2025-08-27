import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:meetmax/core/constant/icons.dart';
import 'package:meetmax/core/constant/padding.dart';
import 'package:meetmax/core/routes/route_name.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';
import 'package:meetmax/features/auth_screens/auth_repo/auth_notifier.dart';
import 'package:meetmax/features/auth_screens/sign_up_screen/Riverpod/visible_riverpod.dart';
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
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    _dobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Style = Theme.of(context).textTheme;

    return Consumer(
      builder: (context, ref, child) {
        final authController = ref.watch(authControllerProvider);
        final isVisible = ref.watch(isVisibleProvider);
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
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 24.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: AppColors.primary,
                    ),
                    child: Column(
                      children: [
                        BoxHeader(),
                        SizedBox(height: 24.h),
                        TextFormField(
                          controller: _emailController,
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
                          controller: _nameController,
                          style: TextStyle(color: AppColors.fillcolorTwo),
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
                          controller: _passwordController,
                          style: TextStyle(color: AppColors.fillcolorTwo),
                          decoration: InputDecoration(
                            hintText: "Create Password",
                            suffixIcon: GestureDetector(
                              onTap: () {
                                ref.read(isVisibleProvider.notifier).state =
                                    !isVisible;
                              },
                              child: isVisible == true
                                  ? Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Image.asset(
                                        AppIcons.visibilityoff,
                                        height: 16.h,
                                        width: 16.w,
                                      ),
                                    )
                                  : Icon(
                                      Icons.visibility,
                                      color: AppColors.secondary,
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
                          obscureText: isVisible,
                        ),
                        SizedBox(height: 14.h),
                        TextFormField(
                          controller: _dobController,
                          style: TextStyle(color: AppColors.fillcolorTwo),
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
                        GenderContainer(),
                        SizedBox(height: 20.h),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Custombutton(
                              title: 'Sign Up',
                              onTap: authController.value?.isLoading ?? false
                                  ? null
                                  : () async {
                                      final email = _emailController.text
                                          .trim();
                                      final password = _passwordController.text
                                          .trim();
                                      final name = _nameController.text.trim();
                                      final dob = _dobController.text.trim();

                                      if (email.isEmpty ||
                                          password.isEmpty ||
                                          name.isEmpty ||
                                          dob.isEmpty) {
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Please fill in all fields',
                                            ),
                                          ),
                                        );
                                        return;
                                      }

                                      await ref
                                          .read(authControllerProvider.notifier)
                                          .signUp(email, password);
                                      if (authController.hasError) {
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              authController.error.toString(),
                                            ),
                                          ),
                                        );
                                      } else if (authController.value != null &&
                                          !(authController.value?.isLoading ??
                                              false)) {
                                        Fluttertoast.showToast(
                                          msg: "Successfully registered",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          backgroundColor: AppColors.onPrimary,
                                          textColor: AppColors.primary,
                                          fontSize: 16.sp,
                                        );
                                        context.push(RouteName.signInScreen);
                                      }
                                    },
                            ),
                            if (authController.value?.isLoading ?? false)
                              SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: CircularProgressIndicator(
                                  color: AppColors.onPrimary,
                                  strokeWidth: 2.w,
                                ),
                              ),
                          ],
                        ),
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
                                text: "Sign In",
                                style: Style.labelMedium!.copyWith(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.onPrimary,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    context.push(RouteName.signInScreen);
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
      },
    );
  }
}
