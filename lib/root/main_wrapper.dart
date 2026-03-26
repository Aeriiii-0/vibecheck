import 'package:flutter/material.dart ';
import '../widgets/custom_navbar.dart';
import '../screen/dashboard_screen.dart';
import '../screen/vaultSystem_screen.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const DashboardScreen(),
    const VaultSystemScreen(),
    const Center(
      child: Text('Wallet Screen', style: TextStyle(color: Colors.white)),
    ),
    const Center(
      child: Text('Settings Screen', style: TextStyle(color: Colors.white)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: Navbar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
