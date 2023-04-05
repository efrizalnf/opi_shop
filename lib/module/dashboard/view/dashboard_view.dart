import 'package:OpiShop/module/dashboard/view/responsive.dart/mobile_dashboard.dart';
import 'package:OpiShop/module/dashboard/view/responsive.dart/responsive_layout.dart';
import 'package:OpiShop/module/dashboard/view/responsive.dart/tablet_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:OpiShop/core.dart';

import 'responsive.dart/desktop_dashboard.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return const ResponsiveLayout(
        mobileDashboard: MobileDashboard(),
        tabletDashboard: TabletDashboard(),
        desktopDashboard: DekstopDashboard());
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
