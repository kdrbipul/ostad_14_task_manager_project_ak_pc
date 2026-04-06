import 'package:flutter/material.dart';
class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      child: Icon(Icons.arrow_circle_right_outlined),
    );
  }
}