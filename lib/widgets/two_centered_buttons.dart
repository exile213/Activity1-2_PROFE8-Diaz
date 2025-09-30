import 'package:flutter/material.dart';

class TwoCenteredButtons extends StatelessWidget {
  final VoidCallback? onFirstPressed;
  final VoidCallback? onSecondPressed;

  const TwoCenteredButtons({super.key, this.onFirstPressed, this.onSecondPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: onFirstPressed,
              child: const Text('Button A'),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: onSecondPressed,
              child: const Text('Button B'),
            ),
          ),
        ],
      ),
    );
  }
}


