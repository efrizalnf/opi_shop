import 'dart:convert';

import 'package:OpiShop/core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../helper/const_helper.dart';
import '../../../services/http_services.dart';
import '../../../utils/dialog/show_info_dialog.dart';

class LoginController extends State<LoginView> implements MvcController {
  static late LoginController instance;
  late LoginView view;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<Map<String, dynamic>> doLogin() async {
    final result = await HttpServices.doLogin(
        usernameController.text, passwordController.text);
    if (result['id'] != 1) {
      showInfoDialog('Wrong Username and password!');
    } else {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool(ConstHelper.keyLogin, true);
      prefs.setString(ConstHelper.keyLogin, jsonEncode(result));
      print('Hasil : $result');
      Get.offAll(const HomeView());
    }
    return result;
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
