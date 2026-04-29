import 'package:flutter/material.dart';
class AppButton extends StatelessWidget {

  final Widget child;
  final VoidCallback onPressed;
  const AppButton({
    super.key, required this.child, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: child,
    );
  }
}