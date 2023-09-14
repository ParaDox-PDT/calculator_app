import 'package:flutter/material.dart';
import 'package:flutter_defualt_project/ui/widgets/global_button.dart';
import 'package:flutter_defualt_project/utils/colors.dart';
import 'package:flutter_defualt_project/utils/extension.dart';
import 'package:flutter_defualt_project/utils/icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          22.ph,
          Container(
            width: double.infinity,
            height: 238.h,
            padding: EdgeInsets.symmetric(
                horizontal: 20.w, vertical: 10.h),
            decoration: BoxDecoration(
              border:
              Border.all(width: 2, color: Colors.white),
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
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    controller: scrollController,
                    children: [
                      Text(
                        "12345679 x 9",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge,
                        textAlign: TextAlign.end,
                      ),
                      30.ph,
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ans = ",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall,
                          ),
                          SizedBox(
                            width: 220.w,
                            child: Text(
                              "1,11,11,111,11112312312312",
                              maxLines: 2,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                  color: AppColors
                                      .textColor),
                              textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          32.ph,
          const GlobalButton(isSvg: false, child: "C"),
          const GlobalButton(isSvg: false, child: "%"),
          const GlobalButton(isSvg: true, child: AppIcons.backspace),
        ],
      ),
    );
  }
}
