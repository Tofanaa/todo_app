import 'package:flutter/material.dart';
import 'package:todo_app/colors.dart';
import 'package:todo_app/login_page.dart';
import 'package:todo_app/widgets/button.dart';
import 'package:todo_app/widgets/text_form.dart';

import 'widgets/button_text.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const breakPoint = 550;

    //Smartphone Device
    if (breakPoint >= screenWidth) {
      return Scaffold(
        backgroundColor: ColorsPallete.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
            child: Center(
                child: Column(
              children: [
                const Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 40,
                    color: ColorsPallete.gradient1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 48),
                const TextForm(hintText: "Email", obscureText: false),
                const SizedBox(height: 16),
                const TextForm(hintText: "Password", obscureText: true),
                const SizedBox(height: 16),
                const TextForm(hintText: "Confirm Password", obscureText: true),
                const SizedBox(height: 24),
                Button(labelButton: "Signup", onPressed: () {}),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white60,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    ButtonText(
                        labelButton: "Login",
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        })
                  ],
                ),
              ],
            )),
          ),
        ),
      );
    }
    //Tablet & Desktop Device
    else {
      return Scaffold(
        backgroundColor: ColorsPallete.backgroundColor2,
        body: SafeArea(
            child: SingleChildScrollView(
          padding: const EdgeInsets.all(45),
          child: Center(
            child: Container(
              width: 550.0,
              height: 600,
              padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
              decoration: BoxDecoration(
                color: ColorsPallete.backgroundColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  const Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 40,
                      color: ColorsPallete.gradient1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 48),
                  const TextForm(hintText: "Email", obscureText: false),
                  const SizedBox(height: 16),
                  const TextForm(hintText: "Password", obscureText: true),
                  const SizedBox(height: 16),
                  const TextForm(
                      hintText: "Confirm Password", obscureText: true),
                  const SizedBox(height: 24),
                  Button(labelButton: "Sign up", onPressed: () {}),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white60,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      ButtonText(
                          labelButton: "Login",
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          })
                    ],
                  ),
                ],
              ),
            ),
          ),
        )),
      );
    }
  }
}
