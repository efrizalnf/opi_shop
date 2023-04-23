import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../state_util.dart';
import '../../../utils/color_lib.dart';

class ETextFields extends StatelessWidget {
  final String label;
  final Icon? suffixIcon;
  final TextEditingController textEditingController;
  final GlobalKey formKey;
  const ETextFields(
      {super.key,
      required this.label,
      this.suffixIcon,
      required this.textEditingController,
      required this.formKey});

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
          color: ColorLib.darkGray,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              6.0,
            ),
          ),
        ),
        child: Form(
          key: formKey,
          child: TextFormField(
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: label,
              suffixIcon: suffixIcon,
              border: InputBorder.none,
              hintStyle: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                color: ColorLib.lightBlack,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '$label should not be null';
              }
              return null;
            },
          ),
        ),
      ),
    );
  }
}
