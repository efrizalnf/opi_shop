import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:OpiShop/state_util.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView>
    with ChangeNotifier
    implements MvcController {
  static late LoginController instance;
  late LoginView view;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  bool _loggedIn = false;
  bool get loggedIn => _loggedIn;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<User?> login(String email, String password) async {
    UserCredential userCredential = await firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password);
    _loggedIn = true;
    return userCredential.user;
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
