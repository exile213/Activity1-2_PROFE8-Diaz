import 'package:flutter/material.dart';

class TwoButtonRow extends StatelessWidget {
  final VoidCallback? onLeftPressed;
  final VoidCallback? onRightPressed;

  const TwoButtonRow({super.key, this.onLeftPressed, this.onRightPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 16, 141, 2),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: onLeftPressed,
              child: const Text('Book Service'),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 29, 22, 246),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: onRightPressed,
              child: const Text('View Services'),
            ),
          ),
        ],
      ),
    );
  }
}
