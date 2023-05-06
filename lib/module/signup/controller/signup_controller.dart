import 'package:OpiShop/utils/failure.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:OpiShop/state_util.dart';
import '../view/signup_view.dart';

class SignupController extends State<SignupView> implements MvcController {
  static late SignupController instance;
  late SignupView view;

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  signUpUser() async {
    String fullName = fullNameController.text;
    String email = emailController.text;
    String password = passwordController.text;
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user;

    try {
      user = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => value.user);
      firebaseFirestore.collection('users').doc(user!.uid).set(
        {
          'uid': user.uid,
          'firstName': fullName.split(' ')[0],
          'lastName': fullName.split(' ')[1],
          'email': email
        },
      );
      debugPrint('success sign up');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        throw Failure(message: e.message as String);
      }
      if (e.code == 'invalid-email') {
        throw Failure(message: e.message as String);
      }
      if (e.code == 'operation-not-allowed') {
        throw Failure(message: e.message as String);
      }
      if (e.code == 'weak-password') {
        throw Failure(message: e.message as String);
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
