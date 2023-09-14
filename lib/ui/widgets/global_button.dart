import 'package:flutter/material.dart';
import 'package:flutter_defualt_project/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({super.key, required this.isSvg, required this.child});

  final bool isSvg;
  final String child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 60.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60.r),
        border: Border.all(width: 2, color: Colors.white),
        color: AppColors.c_1A1A1A,
        boxShadow: [
          BoxShadow(
            color: AppColors.c_202020.withOpacity(0.5),
            offset: const Offset(-10, -10),
            blurRadius: 20,
            spreadRadius: 0,
            // Add inset box shadow
          ),
          const BoxShadow(
            color: AppColors.c_025,
            offset: Offset(10, 10),
            blurRadius: 20,
            spreadRadius: 0,
            // Add inset box shadow
          ),
        ],
      ),
      child: Center(
          child: isSvg
              ? SvgPicture.asset(child)
              : Text(
                  child,
                  style: Theme.of(context).textTheme.headlineLarge,
                )),
    );
  }
}
