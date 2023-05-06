import 'package:flutter/material.dart';
import 'package:OpiShop/core.dart';

import '../../../utils/color_lib.dart';

class CartsView extends StatefulWidget {
  const CartsView({Key? key}) : super(key: key);

  Widget build(context, CartsController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: ColorLib.white,
      appBar: const CartAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: ListView(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            children: [
              const ProductsCartBody(),
              const TextBody(title: 'DELIVERY\nMETHOD'),
              DeliveryCartBody(
                  isSelected: controller.isSelected,
                  onTap: () {
                    controller.changeIsSelected();
                  }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CartsView> createState() => CartsController();
}
