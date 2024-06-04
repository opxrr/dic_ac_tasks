import 'package:flutter/material.dart';
import 'package:login/UI/home_screen.dart';
import 'package:login/UI/register.dart';
import 'package:login/UI/splash_screen.dart';
import 'UI/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName:(_)=>const SplashScreen(),
        Login.routeName: (_) => const Login(),
        RegisterScreen.routeName: (_) => const RegisterScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
