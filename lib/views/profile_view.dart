import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../widgets/two_expanded_row.dart';
import '../widgets/flexible_demo_column.dart';
import '../widgets/chat_bubble.dart';
import '../widgets/row_column_grid.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF2B5876), Color(0xFF4E4376)],
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  SizedBox(height: 16),
                  ProfileCard(
                    name: 'Emil Diaz',
                    email: 'emil@gmail.com',
                    phone: '09695282766',
                  ),
                  SizedBox(height: 16),
                  TwoExpandedRow(),
                  SizedBox(height: 16),
                  FlexibleDemoColumn(),
                  SizedBox(height: 16),
                  Text(
                    'Quick Actions',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  RowColumnGrid(),
                  SizedBox(height: 16),
                  _MessageUsButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MessageUsButton extends StatelessWidget {
  const _MessageUsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: const Icon(Icons.chat_bubble_outline),
        label: const Text('Message Us'),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              fullscreenDialog: true,
              builder: (_) => const _SupportChatScreen(),
            ),
          );
        },
      ),
    );
  }
}

class _SupportChatScreen extends StatelessWidget {
  const _SupportChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: const Text('Support Chat')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                reverse: true,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                children: const [
                  ChatBubble(text: 'Hi, I need an oil change.', isMe: true),
                  SizedBox(height: 8),
                  ChatBubble(
                    text: 'Sure! When would you like to visit?',
                    isMe: false,
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            Padding(
              padding: EdgeInsets.fromLTRB(
                12,
                8,
                12,
                12 + MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Type a message...',
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(onPressed: () {}, child: const Text('Send')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
