import 'package:OpiShop/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:OpiShop/core.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/product_detail_controller.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({Key? key}) : super(key: key);

  Widget build(context, ProductDetailController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: ColorLib.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: ColorLib.lightBlack,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.addchart_outlined,
              color: ColorLib.lightBlack,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.file_upload_outlined,
              color: ColorLib.lightBlack,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: ColorLib.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: ColorLib.lightBlack,
                  size: 20,
                ),
              ),
              TextButton(
                child: Text(
                  'Back',
                  style: GoogleFonts.roboto(
                      color: ColorLib.lightBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        // defined to prevent overflow in the right of leading widget
        leadingWidth: 80,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  'https://picsum.photos/seed/picsum/290/365',
                  width: 365,
                  height: 290,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Derby Shoes',
                          style: GoogleFonts.roboto(
                              color: ColorLib.lightBlack,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Stella McCartney ',
                          style: GoogleFonts.roboto(
                              color: ColorLib.lightBlack,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '\$384',
                          style: GoogleFonts.roboto(
                              color: ColorLib.lightBlack,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '\$640',
                          style: GoogleFonts.roboto(
                              color: ColorLib.lightBlack,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: ColorLib.lightGray,
                ),
                width: 365,
                height: 44,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: '#C4CACC'.toColor(),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              '349 reviews',
                              style: GoogleFonts.roboto(
                                  color: ColorLib.lightBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: ColorLib.lightBlack,
                              size: 20,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorLib.lightGray,
                            minimumSize: const Size.fromHeight(44)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'data',
                              style: GoogleFonts.roboto(
                                  color: ColorLib.lightBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: '#969FA2'.toColor(),
                              size: 15,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorLib.lightGray,
                            minimumSize: const Size.fromHeight(44)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'data',
                              style: GoogleFonts.roboto(
                                  color: ColorLib.lightBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: '#969FA2'.toColor(),
                              size: 15,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductDetailView> createState() => ProductDetailController();
}
