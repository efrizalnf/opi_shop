import 'package:OpiShop/state_util.dart';
import 'package:OpiShop/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EsignupButton extends StatelessWidget {
  final String label;
  const EsignupButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.08, right: Get.width * 0.08),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: '#CDCDCD'.toColor(),
            minimumSize: const Size.fromHeight(44)),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: GoogleFonts.roboto(
                color: const Color(0xFF455154),
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF969FA2),
            )
          ],
        ),
      ),
    );
  }
}
