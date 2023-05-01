import 'package:OpiShop/core.dart';
import 'package:OpiShop/module/login/widget/buttons/elogin_button.dart';
import 'package:OpiShop/module/login/widget/buttons/elogin_socmed.dart';
import 'package:OpiShop/module/login/widget/buttons/esignup_button.dart';
import 'package:OpiShop/module/login/widget/grid/egrid_widget.dart';
import 'package:OpiShop/module/login/widget/textfield/etext_field.dart';
import 'package:OpiShop/utils/color_lib.dart';
import 'package:OpiShop/utils/failure.dart';
import 'package:OpiShop/utils/show_error.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    return Form(
      key: controller.formKey,
      child: Scaffold(
        backgroundColor: ColorLib.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const EGridWidget(),
              SizedBox(height: Get.height * 0.09),
              ETextField(
                hintText: 'Email',
                isObscured: false,
                textEditingController: controller.emailController,
                onChanged: (value) {},
              ),
              SizedBox(height: Get.height * 0.01),
              ETextField(
                hintText: 'Password',
                isObscured: controller.isObscured,
                textEditingController: controller.passwordController,
                onChanged: (value) {},
                suffixIcon: VisibilityButton(onPressed: () {
                  controller.changeObscured();
                }),
              ),
              SizedBox(height: Get.height * 0.02),
              EloginButton(
                label: 'Login',
                onPressed: () async {
                  if (controller.formKey.currentState!.validate()) {
                    try {
                      await controller.signInWithEmail();
                      await Get.to(const HomeView());
                      controller.emailController.clear();
                      controller.passwordController.clear();
                    } on Failure catch (failure) {
                      showErrorDialog(context, failure.message);
                    }
                  }
                },
              ),
              SizedBox(height: Get.height * 0.02),
              SizedBox(height: Get.height * 0.30),
              ELoginSocmedButton(
                label: 'Log In with Google',
                icon: Ionicons.logo_google,
                onPressed: () async {
                  await controller.signInWithGoogle();
                },
              ),
              SizedBox(height: Get.height * 0.01),
              ELoginSocmedButton(
                label: 'Log In with Facebook',
                icon: Ionicons.logo_facebook,
                onPressed: () {},
              ),
              SizedBox(height: Get.height * 0.01),
              const EsignupButton(
                label: 'Sign Up',
              ),
            ]),
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}

class VisibilityButton extends StatelessWidget {
  const VisibilityButton({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.visibility,
        color: Colors.grey[600],
      ),
    );
  }
}
