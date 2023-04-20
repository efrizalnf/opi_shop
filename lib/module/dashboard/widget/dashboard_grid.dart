import 'package:OpiShop/core.dart';
import 'package:flutter/material.dart';
import 'package:OpiShop/utils/color_lib.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardGrid extends StatelessWidget {
  const DashboardGrid({super.key, required this.products});
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
          (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.network(
                      'https://picsum.photos/seed/picsum/200/300',
                      width: 165,
                      height: 120,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Text(products[index].title,
                      style: GoogleFonts.roboto(
                          color: ColorLib.lightBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w700)),
                  Expanded(
                    child: Text(products[index].category as String,
                        style: GoogleFonts.roboto(
                            color: ColorLib.lightBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
          childCount: products.length),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1 / 1.03, crossAxisCount: 2),
    );
  }
}
