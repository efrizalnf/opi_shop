import 'package:OpiShop/core.dart';
import 'package:flutter/material.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard(
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
      backgroundColor: Colors.white,
      // appBar: const DashboardAppBar(),
      body: CustomScrollView(
        slivers: [
          const DashboardAppBar(),
          DashboardHeader(
              pageController: pageController, tabController: tabController),
          DashboardGrid(products: products)
        ],
      ),
    );
  }
}
