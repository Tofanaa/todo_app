import 'package:flutter/material.dart';
import 'package:todo_app/colors.dart';
import 'package:todo_app/login_page.dart';
import 'package:todo_app/second_onboarding_page.dart';
import 'package:todo_app/widgets/button.dart';

import 'widgets/button_text.dart';

class FirstOnBoardingPage extends StatelessWidget {
  const FirstOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const breakPoint = 550;

    //Smartphone Device
    if (breakPoint >= screenWidth) {
      return Scaffold(
        backgroundColor: ColorsPallete.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Get",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 48,
                            color: ColorsPallete.borderColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Organized & Boost",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 48,
                            color: ColorsPallete.gradient1,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Your Productivity",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 48,
                            color: ColorsPallete.borderColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )),
                const SizedBox(height: 24),
                Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Button(
                            labelButton: "Next",
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SecondOnBoardingPage()));
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
                    ))
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
            child: Padding(
          padding: const EdgeInsets.all(45),
          child: Center(
            child: Container(
              width: 550.0,
              height: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
              decoration: BoxDecoration(
                color: ColorsPallete.backgroundColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 48,
                              color: ColorsPallete.borderColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Organized & Boost",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 48,
                              color: ColorsPallete.gradient1,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Your Productivity",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 48,
                              color: ColorsPallete.borderColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(height: 24),
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Button(
                              labelButton: "Next",
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SecondOnBoardingPage()));
                              }),
                          const SizedBox(height: 24),
                          ButtonText(
                              labelButton: "Skip",
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()));
                              })
                        ],
                      ))
                ],
              ),
            ),
          ),
        )),
      );
    }
  }
}
