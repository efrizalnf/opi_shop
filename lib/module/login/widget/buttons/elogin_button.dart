import 'package:OpiShop/state_util.dart';
import 'package:OpiShop/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EloginButton extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  const EloginButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorLib.primaryColor,
            minimumSize: const Size.fromHeight(44)),
        onPressed: onPressed,
        child: Text(
          label,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
