import 'package:day2/first_screen.dart';
import 'package:day2/home_screen.dart';
import 'package:day2/splash_screen.dart';

import 'package:flutter/material.dart';

import 'telegram.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/telegram': (context) => const Telegram(),
        '/first': (context) => const FirstScreen()
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
