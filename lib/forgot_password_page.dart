import 'package:flutter/material.dart';
import 'package:todo_app/colors.dart';
import 'package:todo_app/login_page.dart';
import 'package:todo_app/widgets/button.dart';
import 'package:todo_app/widgets/button_text.dart';
import 'package:todo_app/widgets/text_form.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const breakPoint = 550;
    bool isSendEmail = false;

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
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 40,
                    color: ColorsPallete.gradient1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  isSendEmail == true
                      ? "We have sent email."
                      : "Please, enter your email associated with your account and we'll send an email with link, where you can change your password",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white60,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 48),
                const TextForm(hintText: "Email", obscureText: false),
                const SizedBox(height: 24),
                Button(
                    labelButton: isSendEmail == true ? "Resend" : "Send",
                    onPressed: () {
                      setState(() {
                        isSendEmail = true;
                      });
                    }),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Or you can login",
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
                )
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
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 40,
                          color: ColorsPallete.gradient1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        isSendEmail == true
                            ? "We have sent email."
                            : "Please, enter your email associated with your account and we'll send an email with link, where you can change your password",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white60,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 48),
                      const TextForm(
                        hintText: "Email",
                        obscureText: false,
                      ),
                      const SizedBox(height: 24),
                      Button(
                          labelButton: isSendEmail == true ? "Resend" : "Send",
                          onPressed: () {
                            setState(() {
                              isSendEmail = true;
                            });
                          }),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Or you can",
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
          ),
        ),
      );
    }
  }
}
