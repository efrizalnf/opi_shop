import 'package:OpiShop/state_util.dart';
import 'package:OpiShop/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ETextField extends StatelessWidget {
  final Icon? suffixIcon;
  final String label;
  final TextEditingController textEditingController;

  final Function(String value) onChanged;

  const ETextField(
      {super.key,
      this.suffixIcon,
      required this.label,
      required this.textEditingController,
      required this.onChanged});

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
        child: TextFormField(
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
          onChanged: (value) => onChanged(value),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '$label shoul not be empty';
            }
            return null;
          },
        ),
      ),
    );
  }
}
