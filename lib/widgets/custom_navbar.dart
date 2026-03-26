import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const Navbar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    const Color selectedColor = Color(0xff4EC6B5);
    const Color unselectedColor = Color(0xff64748B);

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xff0B1A1D),
      selectedItemColor: selectedColor,
      unselectedItemColor: unselectedColor,
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
            color: currentIndex == 0 ? selectedColor : unselectedColor,
          ),
          label: 'DASHBOARD',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/vault.png',
            width: 20,
            height: 20,
            color: currentIndex == 1 ? selectedColor : unselectedColor,
          ),
          label: 'VAULT',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/wallet.png',
            width: 20,
            height: 20,
            color: currentIndex == 2 ? selectedColor : unselectedColor,
          ),
          label: 'WALLET',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/settings.png',
            width: 20,
            height: 20,
            color: currentIndex == 3 ? selectedColor : unselectedColor,
          ),
          label: 'SETTINGS',
        ),
      ],
    );
  }
}
