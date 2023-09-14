import 'package:flutter/material.dart';
import 'package:flutter_defualt_project/ui/tab_box/screens/calculator/calculator_screen.dart';
import 'package:flutter_defualt_project/utils/colors.dart';
import 'package:flutter_defualt_project/utils/extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBoxScreen extends StatefulWidget {
  const TabBoxScreen({super.key});

  @override
  State<TabBoxScreen> createState() => _TabBoxScreenState();
}

class _TabBoxScreenState extends State<TabBoxScreen> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              22.ph,
              TabBar(
                indicatorColor: AppColors.c_F63356,
                indicatorWeight: 3.h,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: AppColors.passiveTextColor,
                labelColor: AppColors.c_F63356,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      "Calculator",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Unit convertor",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Exchange Rate",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
             const Expanded(
                child: TabBarView(
                    physics:  NeverScrollableScrollPhysics(),
                    children: [
                      CalculatorScreen(),
                       Center(
                        child: Text("It's rainy here"),
                      ),
                       Center(
                        child: Text("It's sunny here"),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
