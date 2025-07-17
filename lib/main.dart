import 'package:flutter/material.dart';
import 'package:zoom_clone/screens/login_screen.dart';
import 'package:zoom_clone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoom Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      routes: {'/login': (context) => const LoginScreen()},
      home: const LoginScreen(),
    );
  }
}
