import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/color_lib.dart';

class TextBody extends StatelessWidget {
  const TextBody({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(
        title,
        style: GoogleFonts.roboto(
            color: ColorLib.lightBlack,
            fontSize: 12,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
