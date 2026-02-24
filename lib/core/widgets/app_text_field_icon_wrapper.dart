import 'package:flutter/material.dart';

class AppTextFieldIconWrapper extends StatelessWidget {
  final Icon icon;

  const AppTextFieldIconWrapper({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: icon,
    );
  }
}
