import 'package:OpiShop/module/carts/widget/carts_appbar.dart';
import 'package:OpiShop/module/carts/widget/text_body.dart';
import 'package:flutter/material.dart';
import 'package:OpiShop/core.dart';

import '../../../utils/color_lib.dart';
import '../controller/carts_controller.dart';
import '../widget/delivery_cart_body.dart';
import '../widget/products_cart_body.dart';

class CartsView extends StatefulWidget {
  const CartsView({Key? key}) : super(key: key);

  Widget build(context, CartsController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: ColorLib.white,
      appBar: const CartAppBar(),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ProductsCartBody(),
              TextBody(
                title: 'DELIVERY\nMETHOD',
              ),
              DeliveryCartBody()
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CartsView> createState() => CartsController();
}
