import 'package:flutter/material.dart';
import 'package:todo_app/colors.dart';
import 'package:todo_app/forgot_password_page.dart';
import 'package:todo_app/signup_page.dart';
import 'package:todo_app/widgets/button.dart';
import 'package:todo_app/widgets/password_form.dart';
import 'package:todo_app/widgets/text_form.dart';

import 'widgets/button_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidePassword = true;
  bool _isHidePasswordDesktop = true;
  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  void _togglePasswordVisibilityDesktop() {
    setState(() {
      _isHidePasswordDesktop = !_isHidePasswordDesktop;
    });
  }

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
                  "Login",
                  style: TextStyle(
                    fontSize: 40,
                    color: ColorsPallete.gradient1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 48),
                const TextForm(hintText: "Email"),
                const SizedBox(height: 16),
                PasswordForm(
                  hintText: "Password",
                  isHide: _isHidePassword,
                  obscureFunction: GestureDetector(
                    onTap: () {
                      _togglePasswordVisibility();
                    },
                    child: Icon(
                      _isHidePassword ? Icons.visibility_off : Icons.visibility,
                      color: ColorsPallete.borderColor,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Button(labelButton: "Login", onPressed: () {}),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white60,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    ButtonText(
                        labelButton: "Create Account",
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const SignupPage()));
                        })
                  ],
                ),
                const SizedBox(height: 8),
                ButtonText(
                    labelButton: "Forgot Password?",
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const ForgotPasswordPage()));
                    })
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
                    "Login",
                    style: TextStyle(
                      fontSize: 40,
                      color: ColorsPallete.gradient1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 48),
                  const TextForm(
                    hintText: "Email",
                  ),
                  const SizedBox(height: 16),
                  PasswordForm(
                    hintText: "Password",
                    isHide: _isHidePasswordDesktop,
                    obscureFunction: GestureDetector(
                      onTap: () {
                        _togglePasswordVisibilityDesktop();
                      },
                      child: Icon(
                        _isHidePasswordDesktop
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: ColorsPallete.borderColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Button(labelButton: "Login", onPressed: () {}),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white60,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      ButtonText(
                          labelButton: "Create Account",
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const SignupPage()));
                          })
                    ],
                  ),
                  const SizedBox(height: 8),
                  ButtonText(
                      labelButton: "Forgot Password?",
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const ForgotPasswordPage()));
                      })
                ],
              ),
            ),
          ),
        )),
      );
    }
  }
}
