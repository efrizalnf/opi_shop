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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo2.png",
              width: 120.0,
              height: 120.0,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(color: ColorLib.primaryColor)),
          ],
        ),
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
