import 'package:flutter/material.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(const Scherreke13App());
}

class Scherreke13App extends StatelessWidget {
  const Scherreke13App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scherre'ke 13",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.orange,
      ),
      home: const DashboardScreen(),
    );
  }
}
Add main.dart