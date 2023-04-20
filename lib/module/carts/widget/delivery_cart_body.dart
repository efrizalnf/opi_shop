import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/color_lib.dart';

class DeliveryCartBody extends StatelessWidget {
  const DeliveryCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        physics: const ScrollPhysics(),
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: ColorLib.darkGray),
              width: 345,
              height: 70,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Free Shipping',
                        style: GoogleFonts.roboto(
                            color: ColorLib.lightBlack,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        '1 month - Friday, 27 July 2018',
                        style: GoogleFonts.roboto(
                            color: ColorLib.lightBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: GoogleFonts.roboto(
                            color: ColorLib.lightBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(width: 10),
                      const Icon(Icons.radio_button_checked)
                    ],
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {},
            child: const Text("Proceed to Checkout"),
          ),
        ],
      ),
    );
  }
}


      //  Container(
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(6),
      //           color: ColorLib.darkGray),
      //       width: 345,
      //       height: 70,
      //       padding: const EdgeInsets.symmetric(horizontal: 15),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Text(
      //                 'Standard Shipping',
      //                 style: GoogleFonts.roboto(
      //                     color: ColorLib.lightBlack,
      //                     fontSize: 16,
      //                     fontWeight: FontWeight.w700),
      //               ),
      //               const SizedBox(height: 3),
      //               Text(
      //                 '2 weeks - Tuesday, 10 July 2018',
      //                 style: GoogleFonts.roboto(
      //                     color: ColorLib.lightBlack,
      //                     fontSize: 14,
      //                     fontWeight: FontWeight.w400),
      //               )
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               Text(
      //                 'Free',
      //                 style: GoogleFonts.roboto(
      //                     color: ColorLib.lightBlack,
      //                     fontSize: 14,
      //                     fontWeight: FontWeight.w400),
      //               ),
      //               const SizedBox(width: 10),
      //               const Icon(Icons.radio_button_off)
      //             ],
      //           )
      //         ],
      //       ),
      //     ),
      //     const SizedBox(height: 10),
      //     Container(
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(6),
      //           color: ColorLib.darkGray),
      //       width: 345,
      //       height: 70,
      //       padding: const EdgeInsets.symmetric(horizontal: 15),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Text(
      //                 'Express Shipping',
      //                 style: GoogleFonts.roboto(
      //                     color: ColorLib.lightBlack,
      //                     fontSize: 16,
      //                     fontWeight: FontWeight.w700),
      //               ),
      //               const SizedBox(height: 3),
      //               Text(
      //                 '3-4 days - Sunday, 1 July 2018',
      //                 style: GoogleFonts.roboto(
      //                     color: ColorLib.lightBlack,
      //                     fontSize: 14,
      //                     fontWeight: FontWeight.w400),
      //               )
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               Text(
      //                 'Free',
      //                 style: GoogleFonts.roboto(
      //                     color: ColorLib.lightBlack,
      //                     fontSize: 14,
      //                     fontWeight: FontWeight.w400),
      //               ),
      //               const SizedBox(width: 10),
      //               const Icon(Icons.radio_button_off)
      //             ],
      //           )
      //         ],
      //       ),
      //     ),