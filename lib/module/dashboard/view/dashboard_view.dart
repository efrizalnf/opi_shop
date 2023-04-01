import 'package:flutter/material.dart';
import 'package:OpiShop/core.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DashboardAppBar(),
      body: Column(
        children: [
          DashboardHeader(
              pageController: controller.pageController,
              tabController: controller.tabController),
          const DashboardGrid(),
        ],
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
