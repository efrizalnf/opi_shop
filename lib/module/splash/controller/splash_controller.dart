import 'package:flutter/material.dart';
import 'package:OpiShop/state_util.dart';
import '../view/splash_view.dart';

class SplashController extends State<SplashView> implements MvcController {
  static late SplashController instance;
  late SplashView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      // just delay for showing this slash page clearer because it too fast
      // checkSignedIn();
    });
  }

  // void checkSignedIn() async {
  //   AuthProvider authProvider = context.read<AuthProvider>();
  //   bool isLoggedIn = await authProvider.isLoggedIn();
  //   if (isLoggedIn) {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => HomePage()),
  //     );
  //     return;
  //   }
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => LoginPage()),
  //   );
  // }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
