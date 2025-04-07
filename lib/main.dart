import 'package:flutter/material.dart';
import 'package:seedcalc/ui/screens/seed_calc_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seed Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.tealAccent.shade700,
          secondary: Colors.blueGrey.shade200,
          tertiary: Colors.blueGrey.shade800
        ),
      ),
      home: const SeedCalcScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}