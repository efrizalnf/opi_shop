import 'package:OpiShop/module/home/view/home_view.dart';
import 'package:OpiShop/utils/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:OpiShop/state_util.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView> implements MvcController {
  static late LoginController instance;
  late LoginView view;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  User? _user;
  User? get user => _user;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<void> login() async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      await Get.to(const HomeView());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Failure(
            message:
                'There is no user record corresponding to this identifier. The user may have been deleted.');
      } else if (e.code == 'wrong-password') {
        throw Failure(
            message:
                'The password is invalid or the user does not have a password.');
      }
    } catch (e) {
      throw Failure(message: 'There is exception occured');
    }
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
