import 'package:flutter/material.dart';

class ThreeTextRow extends StatelessWidget {
  const ThreeTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle style = Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(fontWeight: FontWeight.w700, color: Colors.white, letterSpacing: 0.4) 
        ?? const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Reliable', style: style),
        Text('Fast', style: style),
        Text('Affordable', style: style),
      ],
    );
  }
}


