import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Utils {
  static Future<void> copyToClipboard(String value, BuildContext context) async {
    await Clipboard.setData(ClipboardData(text: value)).then((_) {
      showFlash<void>(
        context: context,
        duration: Duration(seconds: 2),
        builder: (BuildContext context, FlashController<void> controller) {
          return Flash<void>(
            controller: controller,
            backgroundColor: Colors.green,
            position: FlashPosition.bottom,
            behavior: FlashBehavior.floating,
            child: FlashBar(
              padding: const EdgeInsets.all(5.0),
              content: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Icon(Icons.check),
                    ),
                    Expanded(
                      child: Text(
                        'Copied to clipboard',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
