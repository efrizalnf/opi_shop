import 'package:flutter/material.dart';
import 'package:OpiShop/core.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;
    List<StatefulWidget> pages = const [
      DashboardView(),
      CartsView(),
      ChatView(),
      ProfileView()
    ];

    return Scaffold(
      body: pages[controller.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.currentIndex,
        onTap: (value) => controller.setCurrentIndex(value),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
        ],
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
