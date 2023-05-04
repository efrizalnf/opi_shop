// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:OpiShop/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../state_util.dart';

class ETextField extends StatelessWidget {
  final String label;
  final Icon? suffixIcon;
  TextEditingController? textEditingController;
  ETextField({
    Key? key,
    required this.label,
    this.suffixIcon,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.08,
      ),
      child: Container(
        height: 44.0,
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        decoration: BoxDecoration(
          color: '#CDCDCD'.toColor(),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              6.0,
            ),
          ),
        ),
        child: TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: label,
            suffixIcon: suffixIcon,
            border: InputBorder.none,
            hintStyle: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              color: '#455154'.toColor(),
            ),
          ),
        ),
      ),
    );
  }
}
