import 'package:flutter/material.dart';

class cumstomAlert extends StatelessWidget {
  final String title;
  final String actionText;
  final VoidCallback onPressed;

  cumstomAlert({
    required this.title,
    required this.actionText,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('AlertDialog Title'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(title),
            Text(actionText),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Approve'),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
