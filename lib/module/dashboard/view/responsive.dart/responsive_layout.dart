import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobileDashboard,
      required this.tabletDashboard,
      required this.desktopDashboard});
  final Widget mobileDashboard;
  final Widget tabletDashboard;
  final Widget desktopDashboard;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth < 500) {
          return mobileDashboard;
        }
        if (constraint.maxWidth < 1100) {
          return tabletDashboard;
        } else {
          return desktopDashboard;
        }
      },
    );
  }
}
