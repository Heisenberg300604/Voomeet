import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Start or Join a Meeting',
            style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Image.asset('assets/images/onboarding.jpg'),
          ),
          CustomButton(
            text: 'Google Sign In',
            onPressed: () async {
              // Handle Google Sign In
              bool res = await _authMethods.signInWithGoogle(context);
              if (res) {
                // Navigate to home screen or next screen
                Navigator.pushNamed(context, '/home');
              }
            },
          ),
        ],
      ),
    );
  }
}
