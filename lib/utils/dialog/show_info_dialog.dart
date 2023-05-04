import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../core.dart';

Future showInfoDialog(String message) async {
  await showDialog<void>(
    context: globalContext,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Container(
        color: Colors.black.withOpacity(0.4),
        child: Center(
          child: Card(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Wrap(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Info",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          message,
                          style: const TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () => Get.back(),
                          child: const Text("Ok"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
              .animate(
                  // delay: 200.ms,
                  )
              .fade()
              .shake(),
        ),
      );
      return AlertDialog(
        title: const Text('Info')
            .animate(
              delay: 900.ms,
            )
            .fade()
            .shake(),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(message)
                  .animate(
                    delay: 900.ms,
                  )
                  .fade()
                  .shake(),
            ],
          )
              .animate(
                delay: 900.ms,
              )
              .fade()
              .shake(),
        ),
        actions: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Ok"),
          ),
        ],
      );
    },
  );
}
