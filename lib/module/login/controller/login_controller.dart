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

  void login() async {
    UserCredential userCredential =
        await firebaseAuth.signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
    _user = userCredential.user;
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
