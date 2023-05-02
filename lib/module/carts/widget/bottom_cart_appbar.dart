import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/color_lib.dart';

class BottomCartAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BottomCartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 345,
      decoration: BoxDecoration(
          color: ColorLib.lightGray, borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Subtotal',
            style: GoogleFonts.roboto(
                color: ColorLib.lightBlack,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          Text(
            '\$810.15',
            style: GoogleFonts.roboto(
                color: ColorLib.lightBlack,
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
          Text(
            '2 items',
            style: GoogleFonts.roboto(
                color: ColorLib.lightBlack,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(44);
}
