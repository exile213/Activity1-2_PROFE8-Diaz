import 'package:flutter/material.dart';

class ThreeTextRow extends StatelessWidget {
  const ThreeTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('One'),
        Text('Two'),
        Text('Three'),
      ],
    );
  }
}


