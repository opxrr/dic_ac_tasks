import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        left: true,
        right: true,
        top: true,
        minimum: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 200),
                child: Text(
                  '   Welcome To Home',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60,bottom: 60),
                child: SizedBox(
                    child: Image.asset('assets/images/welcome.png')),
              ),
              const Text(
                  'Currently The Next Part of Home Activity &\nFragmentation is under'
                  ' development. The upcoming\nPart 2 is coming Soon........')
            ],
          )),
        ),
      ),
    );
  }
}
