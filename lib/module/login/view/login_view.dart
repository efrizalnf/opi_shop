import 'package:OpiShop/core.dart';
import 'package:OpiShop/module/login/widget/elogin1/buttons/elogin_button.dart';
import 'package:OpiShop/utils/color_lib.dart';
import 'package:OpiShop/utils/failure.dart';
import 'package:OpiShop/utils/show_error.dart';
import 'package:flutter/material.dart';
import '../widget/elogin1/buttons/esignup_button.dart';
import '../widget/elogin1/buttons/etext_button.dart';
import '../widget/elogin1/grid/egrid_widget.dart';
import '../widget/elogin1/textfield/etext_field.dart';

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
              SizedBox(
                height: Get.height * 0.09,
              ),
              ETextField(
                hintText: 'Email',
                textEditingController: controller.emailController,
                onChanged: (value) {},
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              ETextField(
                hintText: 'Password',
                textEditingController: controller.passwordController,
                onChanged: (value) {},
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility,
                      color: Colors.grey[600],
                    )),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              EloginButton(
                label: 'Login',
                onPressed: () async {
                  if (controller.formKey.currentState!.validate()) {
                    try {
                      await controller.login();
                      controller.emailController.clear();
                      controller.passwordController.clear();
                    } on Failure catch (failure) {
                      showErrorDialog(context, failure.message);
                    }
                  }
                },
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              const ETextButton(),
              SizedBox(
                height: Get.height * 0.20,
              ),
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
