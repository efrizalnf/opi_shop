import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../helper/const_helper.dart';
import '../../../state_util.dart';
import '../../home/view/home_view.dart';
import '../../login/view/login_view.dart';
import '../view/splash_view.dart';

class SplashController extends State<SplashView> implements MvcController {
  static late SplashController instance;
  late SplashView view;

  @override
  void initState() {
    instance = this;
    isLogin();
    super.initState();
  }

  isLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? cekLogin = prefs.getBool(ConstHelper.checkLogin);
    if (cekLogin == true) {
      Get.offAll(const HomeView());
    } else {
      Get.offAll(const LoginView());
    }
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
