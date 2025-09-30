import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile'), centerTitle: true),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFF5433FF), Color(0xFF20BDFF), Color(0xFFA5FECB)],
          ),
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  SizedBox(height: 16),
                  ProfileCard(
                    name: 'Emil Diaz',
                    email: 'emil@gmail.com',
                    phone: '09695282766',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
