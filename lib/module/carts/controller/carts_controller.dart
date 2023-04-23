import 'package:flutter/material.dart';
import 'package:OpiShop/state_util.dart';
import '../view/charts_view.dart';

class CartsController extends State<CartsView> implements MvcController {
  static late CartsController instance;
  late CartsView view;
  bool isSelected = false;

  void changeIsSelected() {
    isSelected = !isSelected;
    setState(() {});
  }

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
