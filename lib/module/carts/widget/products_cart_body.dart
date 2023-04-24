import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/color_lib.dart';

class ProductsCartBody extends StatelessWidget {
  const ProductsCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 258,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child:
                    Image.network('https://picsum.photos/seed/picsum/100/100'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Platform Derby Shoes',
                      style: GoogleFonts.roboto(
                          color: ColorLib.lightBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Color: Black',
                      style: GoogleFonts.roboto(
                          color: ColorLib.lightBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Size: 9 UK',
                      style: GoogleFonts.roboto(
                          color: ColorLib.lightBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '\$79.00',
                      style: GoogleFonts.roboto(
                          color: ColorLib.lightBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: ColorLib.lightBlack,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.delete),
                      color: ColorLib.lightBlack)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
