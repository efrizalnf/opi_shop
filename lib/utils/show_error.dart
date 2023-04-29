import 'package:OpiShop/utils/color_lib.dart';
import 'package:flutter/material.dart';

void showErrorDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Ok"),
          )
        ],
        backgroundColor: ColorLib.lightBlack,
        content: Text(message),
        title: const Text("An error occured"),
      );
    },
  );
}
