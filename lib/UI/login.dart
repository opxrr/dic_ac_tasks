import 'package:flutter/material.dart';
import 'package:login/UI/home_screen.dart';
import 'package:login/UI/register.dart';
import 'package:login/custom_widgets/custom_text_form_field.dart';

class Login extends StatefulWidget {
  static const String routeName = 'login';

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    child: Image.asset('assets/images/head_logo2.png')),
                const Padding(
                  padding:
                      EdgeInsets.only(right: 30, left: 30, bottom: 25, top: 40),
                  child: CustomTextFormField(
                    hintName: 'Enter your email',
                    isPassword: false,
                    keyboardType: TextInputType.emailAddress,
                    labelIcon:
                        ImageIcon(AssetImage("assets/images/email_icon.png")),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 30, left: 30),
                  child: CustomTextFormField(
                    hintName: 'Enter your password',
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
                          'Remember me',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    const Text(
                      'Forgot password ?',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 30, top: 150),
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
                        'LogIn',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('New Member ?'),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, RegisterScreen.routeName);
                      },
                      child: const Text('Register Now'),
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
