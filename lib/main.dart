import 'package:flutter/material.dart';
import '../routes/app_route.dart';

void main() {
  runApp(const MainApp());
}

// * main class
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoute.loginScreen, // first screen that'll show
      routes: AppRoute.routes,
    );
  }
}
