import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login/UI/login.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'Splash';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Login.routeName);
    });
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Image.asset(
        'assets/images/splash.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
