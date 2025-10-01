import 'package:flutter/material.dart';

class FlexibleDemoColumn extends StatelessWidget {
  const FlexibleDemoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFE3F2FD),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(child: Text('Upcoming Appointment')),
            ),
          ),
          const SizedBox(height: 8),
          Flexible(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFFFF3E0),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text('Recommended Service: Oil Change'),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Flexible(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFE8F5E9),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(child: Text('Last Visit Summary')),
            ),
          ),
        ],
      ),
    );
  }
}
