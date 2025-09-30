import 'package:flutter/material.dart';

class TwoButtonRow extends StatelessWidget {
  final VoidCallback? onLeftPressed;
  final VoidCallback? onRightPressed;

  const TwoButtonRow({super.key, this.onLeftPressed, this.onRightPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 160,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 16, 141, 2),
              textStyle: const TextStyle(color: Colors.white),
            ),
            onPressed: onLeftPressed,
            child: const Text('Book Service'),
          ),
        ),
        SizedBox(
          width: 160,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 29, 22, 246),
              textStyle: const TextStyle(color: Colors.white),
            ),
            onPressed: onRightPressed,
            child: const Text('View Services'),
          ),
        ),
      ],
    );
  }
}
