import 'package:OpiShop/shared/widget/other/e_circle_avatar.dart';
import 'package:OpiShop/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSize {
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // tinggi dari title ditentukan oleh toolbarHeight
      // maka isi nilai toolbarHeight sama dengan tinggi dari appbar
      toolbarHeight: 106,
      backgroundColor: Colors.white,
      centerTitle: false,
      elevation: 0.0,
      title: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Shop',
                style: GoogleFonts.roboto(
                    color: ColorLib.lightBlack,
                    fontSize: 36,
                    fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Over 45K Items Available for You',
              style: GoogleFonts.roboto(
                  color: '#969FA2'.toColor(),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: ECircleAvatar(
              avatarRadius: 30,
              iconSize: 30,
              bgCircleAvatar: ColorLib.lightGray,
              bgIcon: '#C3C9CB'.toColor(),
              icon: Ionicons.person),
        )
      ],
    );
  }

  @override
  Widget get child => this;

  @override
  Size get preferredSize => const Size.fromHeight(106);
}
