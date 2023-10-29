import 'package:flutter/material.dart';
import 'package:forestvpn_test/feature/main_scren.dart/main_screen.dart';
import 'package:forestvpn_test/ui/theme.dart';

void main() {
  runApp(const ForestVPNTestApp());
}

class ForestVPNTestApp extends StatelessWidget {
  const ForestVPNTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      title: 'ForestVPN test',
      home: const MainScreen(),
    );
  }
}
