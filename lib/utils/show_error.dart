import 'package:flutter/material.dart';

void showErrorDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("An error occured"),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context), child: const Text("Ok")),
        ],
        content: Text(message),
      );
    },
  );
}
