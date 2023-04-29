import 'package:OpiShop/state_util.dart';
import 'package:OpiShop/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ETextButton extends StatelessWidget {
  const ETextButton({super.key, required this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.08),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          "Login with Social Media",
          style: GoogleFonts.roboto(
            color: '#59B58D'.toColor(),
            fontWeight: FontWeight.w700,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
