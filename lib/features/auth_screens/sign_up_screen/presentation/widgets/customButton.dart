import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.64.r),
        color: AppColors.onPrimary,
      ),
      child: Center(child: Text("Sign Up")),
    );
  }
}
