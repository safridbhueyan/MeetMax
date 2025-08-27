import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meetmax/core/routes/route_name.dart';
import 'package:meetmax/core/theme/theme_extension/app_colors.dart';

class ForgetSection extends StatelessWidget {
  const ForgetSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Style = Theme.of(context).textTheme;

    return Row(
      children: [
        Checkbox(value: true, onChanged: (v) {}),
        Text(
          "Remember me",
          textAlign: TextAlign.center,
          style: Style.bodySmall!.copyWith(
            fontSize: 14.sp,
            color: AppColors.logo,
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            context.push(RouteName.forgetpassScreen);
          },
          child: Text(
            "Forgot Password?",
            textAlign: TextAlign.center,
            style: Style.bodySmall!.copyWith(
              fontSize: 14.sp,
              color: AppColors.logo,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
