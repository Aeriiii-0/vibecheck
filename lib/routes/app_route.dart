import 'package:flutter/material.dart';

/*
1.import pages from screen
2.create a class
3.intantiate the pages
4. get routing maps  */

import '../screen/addExpense_screen.dart';
import '../screen/dashboard_screen.dart';
import '../screen/login_screen.dart';
import '../screen/loginOrSignup_screen.dart';
import '../screen/vaultSystem_screen.dart';
import '../screen/signup_screen.dart';

class AppRoute {
  static const String addExpenseScreen = '/addExpenseScreen';
  static const String dashboardScreen = '/dashboardScreen';
  static const String loginScreen = '/loginScreen';
  static const String loginOrSignupScreen = '/loginOrSignupScreen';
  static const String vaultSystemScreen = '/vaultSystemScreen';
  static const String signupScreen = '/signupScreen';

  static Map<String, WidgetBuilder> get routes {
    return {
      addExpenseScreen: (context) => const AddExpenseScreen(),
      dashboardScreen: (context) => const DashboardScreen(),
      loginScreen: (context) => const LoginScreen(),
      loginOrSignupScreen: (context) => const LoginOrSignupScreen(),
      vaultSystemScreen: (context) => const VaultSystemScreen(),
      signupScreen: (context) => const SignupScreen(),
    };
  }
}
