import 'package:flutter/material.dart';
import 'package:OpiShop/state_util.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView>
    with TickerProviderStateMixin
    implements MvcController {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    // tabController = TabController(length: 4, vsync: this);
  }

  final PageController pageController = PageController();
  late TabController tabController;

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
