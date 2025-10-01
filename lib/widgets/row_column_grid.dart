import 'package:flutter/material.dart';

class RowColumnGrid extends StatelessWidget {
  const RowColumnGrid({super.key});

  Widget _tile(String label, Color color) {
    return Expanded(
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _tile('View Appointments', const Color(0xFFE3F2FD)),
            const SizedBox(width: 12),
            _tile('Book Service', const Color(0xFFFFF3E0)),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            _tile('Contact Support', const Color(0xFFE8F5E9)),
            const SizedBox(width: 12),
            _tile('FAQs', const Color(0xFFEDE7F6)),
          ],
        ),
      ],
    );
  }
}
