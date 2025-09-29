import 'package:flutter/material.dart';
import 'views/home_view.dart';

void main() {
  runApp(const CarMaintenanceApp());
}

class CarMaintenanceApp extends StatelessWidget {
  const CarMaintenanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Maintenance Service',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeView(),
    );
  }
}
