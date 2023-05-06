import 'package:OpiShop/module/signup/widget/e_text_field.dart';
import 'package:OpiShop/utils/color_lib.dart';
import 'package:OpiShop/utils/failure.dart';
import 'package:OpiShop/utils/show_error.dart';
import 'package:flutter/material.dart';
import 'package:OpiShop/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  Widget build(context, SignupController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: ColorLib.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: ColorLib.white,
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: GoogleFonts.roboto(
            color: '#455154'.toColor(),
            fontWeight: FontWeight.w700,
            fontSize: 36.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Ionicons.close_outline,
                size: 24,
                color: ColorLib.primaryColor,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              const Flexible(
                flex: 1,
                child: SizedBox(
                  height: 45.0,
                ),
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  ECircleAvatar(
                      avatarRadius: 40.0,
                      iconSize: 40.0,
                      bgCircleAvatar: ColorLib.darkGray,
                      bgIcon: ColorLib.lightBlack,
                      icon: Icons.person),
                  GestureDetector(
                    onTap: () {
                      // print('Cliked');
                    },
                    child: ECircleAvatar(
                      avatarRadius: 16.0,
                      iconSize: 16.0,
                      bgCircleAvatar: ColorLib.primaryColor,
                      bgIcon: ColorLib.white,
                      icon: Icons.camera_alt,
                    ),
                  ),
                ],
              ),
              const Flexible(
                flex: 1,
                child: SizedBox(
                  height: 25.0,
                ),
              ),
              ETextField(
                hintText: 'Full Name',
                textEditingController: controller.fullNameController,
                isObscured: false,
              ),
              const SizedBox(
                height: 10.0,
              ),
              ETextField(
                hintText: 'Email',
                textEditingController: controller.emailController,
                isObscured: false,
              ),
              const SizedBox(
                height: 10.0,
              ),
              ETextField(
                hintText: 'Password',
                textEditingController: controller.passwordController,
                isObscured: false,
                suffixIcon: VisibilityButton(
                  onPressed: () {
                    controller.changeObscured();
                  },
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              EButtons(
                label: 'Sign Up',
                onPressed: () async {
                  try {
                    await controller.signUpUser();
                    controller.emailController.clear();
                    controller.passwordController.clear();
                  } on Failure catch (failure) {
                    showErrorDialog(context, failure.message);
                  }
                },
              ),
              const SizedBox(
                height: 15.0,
              ),
              // const Flexible(flex: 1, child: ETerms()),
              const Flexible(
                flex: 1,
                child: SizedBox(
                  height: 130.0,
                ),
              ),
              Flexible(
                flex: 1,
                child: TextButton(
                  child: Text(
                    "I have an account",
                    style: GoogleFonts.roboto(
                      color: ColorLib.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18.0,
                    ),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SignupView> createState() => SignupController();
}
