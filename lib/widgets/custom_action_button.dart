import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomActionButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(12)),
      child: Text(label),
    );
  }
}
