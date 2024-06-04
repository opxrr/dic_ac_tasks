import 'package:flutter/material.dart';
import 'package:login/UI/login.dart';
import 'package:login/custom_widgets/custom_text_form_field.dart';

import 'home_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'register';

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isChecked = false;

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: 280,
                    height: 280,
                    child: Image.asset('assets/images/head_logo_register.png')),
                const Padding(
                  padding:
                  EdgeInsets.only(right: 30, left: 30, bottom: 15, ),
                  child: CustomTextFormField(
                    hintName: '   Full name',
                    isPassword: false,
                    keyboardType: TextInputType.text,
                    labelIcon:
                    ImageIcon(AssetImage("assets/images/person_icon.png")),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 30, left: 30,bottom: 15),
                  child: CustomTextFormField(
                    hintName: '   Valid email',
                    isPassword: false,
                    keyboardType: TextInputType.emailAddress,
                    labelIcon:
                    ImageIcon(AssetImage("assets/images/email_icon.png")),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 30, left: 30,bottom: 15),
                  child: CustomTextFormField(
                    hintName: '   Phone number',
                    isPassword: false,
                    keyboardType: TextInputType.number,
                    labelIcon:
                    ImageIcon(AssetImage("assets/images/smartphone_icon.png")),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 30, left: 30,bottom: 15),
                  child: CustomTextFormField(
                    hintName: '   Strong password',
                    isPassword: true,
                    keyboardType: TextInputType.visiblePassword,
                    labelIcon:
                    ImageIcon(AssetImage("assets/images/lock_icon.png")),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        const Text(
                          'By checking the box you agree to our Terms and Conditions.',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 30,top: 50 ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                side: BorderSide.none)),
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(108, 99, 255, 1)),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already a member ?'),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, Login.routeName);
                      },
                      child: const Text('Login'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
