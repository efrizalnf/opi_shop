import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../state_util.dart';
import '../../../utils/color_lib.dart';

class ETextField extends StatelessWidget {
  final Widget? suffixIcon;
  final bool isObscured;
  final String hintText;
  final TextEditingController textEditingController;

  const ETextField({
    super.key,
    this.suffixIcon,
    required this.isObscured,
    required this.hintText,
    required this.textEditingController,
  });

  String? validation(value) {
    if (value == null || value.isEmpty) {
      return '$hintText should not be empty';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
      child: Container(
        height: 44.0,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: ColorLib.darkGray,
          borderRadius: const BorderRadius.all(
            Radius.circular(6.0),
          ),
        ),
        child: TextFormField(
          controller: textEditingController,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              color: ColorLib.lightBlack,
            ),
            hintText: hintText,
            suffixIcon: suffixIcon,
          ),
          obscureText: (hintText != 'Password') ? isObscured : !isObscured,
          style: GoogleFonts.roboto(color: ColorLib.lightBlack),
          validator: validation,
        ),
      ),
    );
  }
}
