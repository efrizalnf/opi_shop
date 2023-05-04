import 'package:flutter/material.dart';
import '../../../state_util.dart';
import '../controller/login_controller.dart';
import '../widget/elogin1/buttons/elogin_button.dart';
import '../widget/elogin1/buttons/esignup_button.dart';
import '../widget/elogin1/buttons/etext_button.dart';
import '../widget/elogin1/grid/egrid_widget.dart';
import '../widget/elogin1/textfield/etext_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const EGridWidget(),
            SizedBox(
              height: Get.height * 0.09,
            ),
            ETextField(
              label: 'Email',
              textEditingController: controller.usernameController,
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            ETextField(
              label: 'Password',
              suffixIcon: Icon(
                Icons.visibility,
                color: Colors.grey[600],
              ),
              textEditingController: controller.passwordController,
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            EloginButton(
              label: 'Login',
              handleLogin: () {
                controller.doLogin();
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
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
