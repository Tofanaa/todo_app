import 'package:flutter/material.dart';
import 'package:todo_app/colors.dart';
import 'package:todo_app/login_page.dart';
import 'package:todo_app/widgets/button.dart';

import 'widgets/button_text.dart';

class SecondOnBoardingPage extends StatelessWidget {
  const SecondOnBoardingPage({super.key});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Start Your",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 48,
                        color: ColorsPallete.borderColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Productivity",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 48,
                        color: ColorsPallete.gradient1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Journey",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 48,
                        color: ColorsPallete.gradient1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 275),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Button(
                        labelButton: "Get Started",
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        }),
                    const SizedBox(height: 24),
                    ButtonText(
                        labelButton: "Skip",
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
              padding: const EdgeInsets.only(
                  top: 64, bottom: 48, left: 32, right: 32),
              decoration: BoxDecoration(
                color: ColorsPallete.backgroundColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Start Your",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 48,
                          color: ColorsPallete.borderColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Productivity",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 48,
                          color: ColorsPallete.gradient1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Journey",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 48,
                          color: ColorsPallete.gradient1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 184),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(
                          labelButton: "Get Started",
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          }),
                      const SizedBox(height: 24),
                      ButtonText(
                          labelButton: "Skip",
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          })
                    ],
                  )
                ],
              ),
            ),
          ),
        )),
      );
    }
  }
}
