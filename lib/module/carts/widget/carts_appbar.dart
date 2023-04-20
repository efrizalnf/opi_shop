import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/color_lib.dart';

class CartAppBar extends StatelessWidget implements PreferredSize {
  const CartAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Clear All",
              style: GoogleFonts.roboto(
                  color: ColorLib.lightBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
        )
      ],
      backgroundColor: ColorLib.white,
      centerTitle: true,
      elevation: 0.0,
      leading: IconButton(
        color: ColorLib.lightBlack,
        icon: const Icon(Icons.close),
        iconSize: 16,
        onPressed: () {},
      ),
      title: Text(
        "Carts",
        style: GoogleFonts.roboto(
            color: ColorLib.lightBlack,
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
    );
  }

  @override
  Widget get child => this;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
