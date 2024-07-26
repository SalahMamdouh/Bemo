import 'package:bemo/pages/onboarding/root.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bemo",
      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (context) => const Root(),
      },
    );
  }
}

