import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'services_view.dart';
import 'profile_view.dart';
import '../widgets/custom_action_button.dart';
import '../widgets/three_text_row.dart';
import '../widgets/two_button_row.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  Widget _buildBody() {
    if (_selectedIndex == 0) {
      return HomePageContent(
        onGetStarted: () {
          setState(() {
            _selectedIndex = 1;
          });
        },
      );
    }
    if (_selectedIndex == 1) return const ServicesView();
    return const ProfileView();
  }

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Car Maintenance Service"),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFF5433FF), Color(0xFF20BDFF), Color(0xFFA5FECB)],
          ),
        ),
        child: _buildBody(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onNavTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.build), label: "Services"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  final VoidCallback? onGetStarted;

  const HomePageContent({super.key, this.onGetStarted});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 720),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: constraints.maxHeight * 0.06),
                    Icon(
                      CupertinoIcons.car_detailed,
                      size: 100,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      "Welcome to CarCare",
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Your trusted car maintenance service",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    const ThreeTextRow(),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: 220,
                      height: 48,
                      child: CustomActionButton(
                        label: "Get Started",
                        onPressed: () {
                          onGetStarted?.call();
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                    TwoButtonRow(
                      onLeftPressed: onGetStarted,
                      onRightPressed: onGetStarted,
                    ),
                    const SizedBox(height: 40),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "What we do",
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: const [
                        _QuickCard(
                          icon: Icons.local_gas_station,
                          title: "Oil Changes",
                        ),
                        _QuickCard(icon: Icons.tire_repair, title: "Tire Care"),
                        _QuickCard(
                          icon: Icons.car_repair,
                          title: "Engine Checks",
                        ),
                        _QuickCard(
                          icon: Icons.cleaning_services,
                          title: "Car Wash",
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _QuickCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const _QuickCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 28, color: Colors.blue[700]),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
