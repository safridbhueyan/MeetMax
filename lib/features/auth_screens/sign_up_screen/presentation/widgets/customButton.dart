import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';

class Custombutton extends StatelessWidget {
  final void Function()? onTap;
  final String? title;
  const Custombutton({super.key, required this.onTap, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.64.r),
        color: AppColors.onPrimary,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Center(child: Text(title ?? "Sign Up")),
      ),
    );
  }
}
