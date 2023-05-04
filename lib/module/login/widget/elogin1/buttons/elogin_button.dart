import 'package:OpiShop/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../state_util.dart';

class EloginButton extends StatelessWidget {
  final String label;
  final Function() handleLogin;
  const EloginButton(
      {super.key, required this.label, required this.handleLogin});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.08, right: Get.width * 0.08),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: '#59B58D'.toColor(),
            minimumSize: const Size.fromHeight(44)),
        /* Todo Get Controller login */
        onPressed: handleLogin,
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
