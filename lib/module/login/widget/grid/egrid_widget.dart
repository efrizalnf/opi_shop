import 'package:OpiShop/state_util.dart';
import 'package:OpiShop/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EGridWidget extends StatelessWidget {
  const EGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: Get.height * 0.05,
          left: Get.width * 0.08,
          right: Get.width * 0.05),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: Get.height * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome\nto OpiShop",
                  style: GoogleFonts.roboto(
                    color: '#455154'.toColor(),
                    fontWeight: FontWeight.w700,
                    fontSize: 36.0,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text(
                  "Biggest collection of 300+ layouts\nfor iOS prototyping.",
                  style: GoogleFonts.roboto(
                    color: ColorLib.lightBlack,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: Get.width * 0.08,
          ),
          Expanded(
            child: Image.asset(
              "assets/images/opi_logo.png",
              width: Get.width * 0.25,
              height: Get.height * 0.20,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
