import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const Navbar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff0B1A1D),
      selectedItemColor: Color(0xff4EC6B5),
      unselectedItemColor: Color(0xff64748B),
      selectedLabelStyle: const TextStyle(
        fontSize: 8,
        fontWeight: FontWeight.w400,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 8,
        fontWeight: FontWeight.w300,
      ),

      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/dashboard.png',
            width: 20,
            height: 20,
            color: Colors.white,
          ),
          label: 'DASHBOARD',
        ),

        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/vault.png',
            width: 20,
            height: 20,
            color: Colors.white,
          ),
          label: 'VAULT',
        ),

        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/wallet.png',
            width: 20,
            height: 20,
            color: Colors.white,
          ),
          label: 'WALLET',
        ),

        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/settings.png',
            width: 20,
            height: 20,
            color: Colors.white,
          ),
          label: 'SETTINGS',
        ),
      ],
    );
  }
}
