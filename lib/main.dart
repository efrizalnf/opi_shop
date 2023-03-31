import 'package:OpiShop/module/dashboard/view/dashboard_view.dart';
import 'package:OpiShop/shared/theme/theme_dark.dart';
import 'package:OpiShop/state_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helper/const_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? cekLogin = prefs.getBool(ConstHelper.checkLogin);
  runApp(
    ChangeNotifierProvider(
      create: (context) {},
      child: MyApp(
        isLogin: cekLogin,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool? isLogin;
  const MyApp({super.key, this.isLogin});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getDarkTheme(),
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.navigatorKey,
      // home: isLogin == true ? const HomeView() : const LoginView(),
      home: const DashboardView(),
    );
  }
}
