import 'package:OpiShop/utils/color_lib.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../state_util.dart';

class ETerms extends StatelessWidget {
  const ETerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: RichText(
              maxLines: 2,
              softWrap: true,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "By signing up, you agree to our",
                    style: TextStyle(
                      color: ColorLib.darkBlack,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Terms",
                    style: TextStyle(
                      color: ColorLib.primaryColor,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.launchUrls(Uri.parse('https://flutter.dev'));
                      },
                  ),
                  TextSpan(
                    text: " And",
                    style: TextStyle(
                      color: ColorLib.darkBlack,
                    ),
                  ),
                  TextSpan(
                    text: " Privacy",
                    style: TextStyle(
                      color: ColorLib.primaryColor,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.launchUrls(Uri.parse('https://google.com'));
                      },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
