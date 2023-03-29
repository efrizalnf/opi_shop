import 'package:flutter/material.dart';
import '../../../utils/color_lib.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "images/logo2.png",
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(color: ColorLib.primaryColor),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
