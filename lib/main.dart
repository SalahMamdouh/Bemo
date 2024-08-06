import 'package:bemo/pages/account.dart';
import 'package:bemo/pages/add_list/root.dart';
import 'package:bemo/pages/home.dart';
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
        '/onboarding': (context) => Root(),
        '/home': (context) => Home(),
        '/add_list': (context) => const AddList(),
        '/account': (context) => const Account(),
      },
    );
  }
}

