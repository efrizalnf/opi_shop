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
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorLib.darkGray,
            minimumSize: const Size.fromHeight(44)),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: GoogleFonts.roboto(
                color: ColorLib.lightBlack,
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: '#969FA2'.toColor(),
            )
          ],
        ),
      ),
    );
  }
}
