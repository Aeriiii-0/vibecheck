import 'package:flutter/material.dart';
import 'package:vibecheck/widgets/gradient_background.dart';

class AddExpenseScreen extends StatelessWidget {
  const AddExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 20),
                _buildHeader(context),
                const Spacer(),
                _buildAmountSection(),
                const SizedBox(height: 8),
                _buildSafeToSpendBadge(),
                const Spacer(),
                _buildCategorySection(),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: _buildNumericKeyboard(),
                ),
                const SizedBox(height: 15),
                _buildSaveButton(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Color(0xff3D2C8D),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.close, color: Colors.white, size: 16),
          ),
        ),
        const Expanded(
          child: Center(
            child: Text(
              'Add Expense',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(width: 30),
      ],
    );
  }

  Widget _buildAmountSection() {
    return Column(
      children: [
        const Text(
          'Enter amount',
          style: TextStyle(
            color: Color(0xff95A4BA),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: const [
            Text(
              '₱',
              style: TextStyle(
                color: Color(0xff4AC2B1),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 6),
            Text(
              '500.00',
              style: TextStyle(
                color: Colors.white,
                fontSize: 44,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSafeToSpendBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xff1E293B).withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xff4AC2B1).withOpacity(0.3)),
      ),
      child: const Text(
        'Safe-to-Spend: ₱ 400.00',
        style: TextStyle(
          color: Color(0xff4AC2B1),
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildCategorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'CATEGORY',
          style: TextStyle(
            color: Color(0xff95A4BA),
            fontSize: 11,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _categoryItem('Food', 'assets/icons/food.png', true),
            _categoryItem('Travel', 'assets/icons/transpo.png', false),
            _categoryItem('Fun', 'assets/icons/fun.png', false),
            _categoryItem('Misc', 'assets/icons/misc.png', false),
          ],
        ),
      ],
    );
  }

  Widget _categoryItem(String label, String iconPath, bool isSelected) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: isSelected
            ? const Color(0xff4AC2B1)
            : const Color(0xff1A1D2D).withOpacity(0.4),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            width: 24,
            height: 24,
            color: isSelected ? Colors.white : const Color(0xff95A4BA),
            errorBuilder: (context, error, stackTrace) => Icon(
              Icons.category,
              size: 22,
              color: isSelected ? Colors.white : const Color(0xff95A4BA),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : const Color(0xff95A4BA),
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNumericKeyboard() {
    return Column(
      children: [
        _keyboardRow(['1', '2', '3']),
        _keyboardRow(['4', '5', '6']),
        _keyboardRow(['7', '8', '9']),
        _keyboardRow(['.', '0', 'backspace']),
      ],
    );
  }

  Widget _keyboardRow(List<String> keys) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: keys.map((key) {
          if (key == 'backspace') {
            return const SizedBox(
              width: 35,
              child: Icon(
                Icons.backspace_outlined,
                color: Color(0xff4AC2B1),
                size: 20,
              ),
            );
          }
          return SizedBox(
            width: 35,
            child: Center(
              child: Text(
                key,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildSaveButton() {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xff4BC1B2), Color(0xff5CA6BA), Color(0xff7383C4)],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.check_circle, color: Colors.white, size: 18),
          SizedBox(width: 8),
          Text(
            'Save Expense',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
