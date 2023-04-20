import 'package:OpiShop/module/carts/widget/carts_appbar.dart';
import 'package:flutter/material.dart';
import 'package:OpiShop/core.dart';

import '../controller/carts_controller.dart';

class CartsView extends StatefulWidget {
  const CartsView({Key? key}) : super(key: key);

  Widget build(context, CartsController controller) {
    controller.view = this;

    return Scaffold(
      appBar: const CartAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<CartsView> createState() => CartsController();
}
