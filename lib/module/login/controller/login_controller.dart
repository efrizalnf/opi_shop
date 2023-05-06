import 'package:OpiShop/utils/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:OpiShop/state_util.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView> implements MvcController {
  static late LoginController instance;
  late LoginView view;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isObscured = false;
  void changeObscured() {
    isObscured = !isObscured;
    setState(() {});
  }

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

  Future<User?> signInWithEmail() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    String email = emailController.text;
    String password = passwordController.text;
    User? user;

    try {
      user = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) => value.user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Failure(message: e.message as String);
      } else if (e.code == 'wrong-password') {
        throw Failure(message: e.message as String);
      } else if (e.code == 'invalid-email') {
        throw Failure(message: e.message as String);
      }
    } catch (e) {
      throw Failure(message: 'There is exception occured');
    }
    debugPrint('succes login');
    return user;
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
