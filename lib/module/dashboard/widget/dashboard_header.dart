import 'dart:ui';
import 'package:OpiShop/core.dart';
import 'package:flutter/material.dart';
import 'package:OpiShop/utils/color_lib.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader(
      {super.key, required this.pageController, required this.tabController});

  final PageController pageController;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          SizedBox(
            height: 180,
            child: PageView(
              scrollBehavior:
                  // configuring to swipe pageview with several device
                  ScrollConfiguration.of(context).copyWith(dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
                PointerDeviceKind.trackpad,
              }),
              onPageChanged: (int pageIndex) {
                tabController.index = pageIndex;
              },
              controller: pageController,
              children: [
                ...List.generate(
                  4,
                  (index) => Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        "https://picsum.photos/id/${index + 16}/345/180",
                        width: Get.width * 0.92,
                        height: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: TabPageSelector(
              borderStyle: BorderStyle.none,
              color: '#C3C9CB'.toColor(),
              controller: tabController,
              selectedColor: ColorLib.primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Arrivals',
                  style: GoogleFonts.roboto(
                      color: ColorLib.lightBlack,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text('See All',
                          style: GoogleFonts.roboto(
                              color: ColorLib.lightBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: ColorLib.lightBlack,
                        weight: 700,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
