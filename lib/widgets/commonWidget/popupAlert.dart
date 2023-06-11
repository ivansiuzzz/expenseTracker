import 'package:flutter/material.dart';

showPopupAlert(
  BuildContext context,
  String title,
  String message,
  Function onAgree,
  String? FirstButtonText,
  String? SecondButtonText,
) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            FirstButtonText == null
                ? SizedBox()
                : TextButton(
                    child: Text(FirstButtonText),
                    onPressed: () {
                      onAgree();
                    },
                  ),
            SecondButtonText == null
                ? SizedBox()
                : TextButton(
                    child: Text(SecondButtonText),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
          ],
        );
      });
}
