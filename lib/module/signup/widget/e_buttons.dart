import 'package:flutter/material.dart';

import '../../../state_util.dart';
import '../../../utils/color_lib.dart';

class EButtonSignup extends StatelessWidget {
  const EButtonSignup(
      {super.key, required this.label, required this.onPressed});
  final String label;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.08, right: Get.width * 0.08),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorLib.primaryColor,
          minimumSize: const Size.fromHeight(44),
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
