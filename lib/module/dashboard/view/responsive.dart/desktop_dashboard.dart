import 'package:OpiShop/core.dart';
import 'package:flutter/material.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard(
      {super.key,
      required this.pageController,
      required this.tabController,
      required this.products});
  final PageController pageController;
  final TabController tabController;
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: const DashboardAppBar(),
      body: Column(
        children: [
          DashboardHeader(
              pageController: pageController, tabController: tabController),
          DashboardGrid(
            products: products,
          ),
        ],
      ),
    );
  }
}
