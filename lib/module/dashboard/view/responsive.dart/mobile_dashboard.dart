// import 'package:flutter/material.dart';
// import 'package:OpiShop/core.dart';

// class DashboardDashboard extends StatefulWidget {
//   const DashboardDashboard({Key? key}) : super(key: key);

//   Widget build(context, DashboardController controller) {
//     controller.view = this;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: const DashboardAppBar(),
//       body: Column(
//         children: [
//           DashboardHeader(
//               pageController: controller.pageController,
//               tabController: controller.tabController),
//           DashboardGrid(
//             products: controller.products,
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   State<DashboardDashboard> createState() => DashboardController();
// }

import 'package:flutter/material.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
    );
  }
}
