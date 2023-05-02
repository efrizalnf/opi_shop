import 'package:OpiShop/module/dashboard/model/product.dart';
import 'package:OpiShop/module/dashboard/service/dashboard_service.dart';
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
    getProducts();
  }

  final PageController pageController = PageController();
  late TabController tabController;

  List<Product> _products = [];
  List<Product> get products => _products;

  void getProducts() async {
    _products = await DashboardService.getProducts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}

// class ProductProvider with ChangeNotifier {
//   List<Product> _products = [];
//   List<Product> get products => _products;

//   Future<List<Product>> getProducts() async {
//     return _products = await DashboardService.getProducts();
//   }
// }
