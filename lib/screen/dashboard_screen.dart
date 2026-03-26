import 'package:flutter/material.dart';
import 'package:vibecheck/widgets/gradient_background.dart';
import '../widgets/custom_navbar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Navbar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: GradientBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  _buildHeader(),
                  const SizedBox(height: 30),
                  _buildSafeToSpend(),
                  const SizedBox(height: 40),
                  _buildAllowanceCard(),
                  const SizedBox(height: 20),
                  _buildMonthlyProgress(),
                  const SizedBox(height: 40),
                  _buildLogExpenseButton(context),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/icons/vibecheck_logo_small.png',
              width: 22,
              height: 21,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            const Text(
              'VibeCheck',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset(
              'assets/icons/notification.png',
              width: 20,
              height: 20,
              color: Colors.white,
            ),
            const SizedBox(width: 15),
            Image.asset(
              'assets/icons/profile.png',
              width: 20,
              height: 20,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSafeToSpend() {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 185,
            height: 185,
            child: Transform.rotate(
              angle: 0.5 * 3.14159,
              child: const CircularProgressIndicator(
                value: 0.7,
                strokeWidth: 20,
                strokeCap: StrokeCap.round,
                backgroundColor: Color(0xff1E293B),
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4AC2B1)),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'SAFE-TO-SPEND',
                style: TextStyle(
                  color: Color(0XFF95A4BA),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                ),
              ),
              const Text(
                '₱ 500.00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAllowanceCard() {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: _infoCard(
              'DAILY ALLOWANCE',
              '₱ 250.00',
              'assets/icons/calendar.png',
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _infoCard(
              'DAYS REMAINING',
              '12 days',
              'assets/icons/calendar_big.png',
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoCard(String title, String value, String iconPath) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xff111627),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xff505D6E), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(iconPath, width: 17, height: 15, color: Colors.white),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Color(0XFF95A4BA),
              fontSize: 10,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMonthlyProgress() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xff111627),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xff505D6E), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'MONTHLY PROGRESS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            'Spent ₱ 15,000.00 of ₱ 20,000.00',
            style: TextStyle(
              color: Color(0xff64748B),
              fontSize: 10,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerRight,
            child: const Text(
              '35%',
              style: TextStyle(
                color: Color(0xff4AC2B1),
                fontSize: 12,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          const SizedBox(height: 4),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const LinearProgressIndicator(
              value: 0.35,
              minHeight: 10,
              backgroundColor: Color(0xff1E293B),
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4AC2B1)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogExpenseButton(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, '/addExpenseScreen'),
      child: Container(
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xff4BC1B2), Color(0xff5CA6BA), Color(0xff7383C4)],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            'LOG EXPENSE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}
