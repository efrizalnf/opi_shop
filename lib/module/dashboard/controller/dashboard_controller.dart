import 'package:OpiShop/module/dashboard/model/product.dart';
import 'package:OpiShop/module/dashboard/service/dashboard_service.dart';
import 'package:flutter/material.dart';
import 'package:OpiShop/state_util.dart';
import '../../../helper/const_helper.dart';
import '../../../services/pref_services.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView>
    with TickerProviderStateMixin
    implements MvcController {
  static late DashboardController instance;
  late DashboardView view;
  Map<String, dynamic> dataLogin = {};

  @override
  void initState() {
    instance = this;
    getData();
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

  void getData() async {
    var data = await PreferencesServices.getDataPrefs(ConstHelper.keyLogin);
    setState(() {
      dataLogin = data;
    });
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}

class ConsttHelper {}

// class ProductProvider with ChangeNotifier {
//   List<Product> _products = [];
//   List<Product> get products => _products;

//   Future<List<Product>> getProducts() async {
//     return _products = await DashboardService.getProducts();
//   }
// }
