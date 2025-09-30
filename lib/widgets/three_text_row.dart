import 'package:flutter/material.dart';

class ThreeTextRow extends StatelessWidget {
  const ThreeTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle style =
        Theme.of(context).textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: Colors.white,
          letterSpacing: 0.4,
        ) ??
        const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Reliable', style: style),
          Text('Fast', style: style),
          Text('Affordable', style: style),
        ],
      ),
    );
  }
}
