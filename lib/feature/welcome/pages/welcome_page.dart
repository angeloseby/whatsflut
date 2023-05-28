import 'package:flutter/material.dart';
import 'package:whatsflut/common/extension/custom_theme_extension.dart';
import 'package:whatsflut/common/widgets/custom_elevated_button.dart';
import 'package:whatsflut/feature/welcome/widgets/language_button.dart';
import 'package:whatsflut/feature/welcome/widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 50,
                    right: 50,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/images/circle.png',
                    color: context.theme.circleImgColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
                child: Column(
              children: [
                const Text(
                  'Welcome to WhatsFlut',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const PrivacyAndTerms(),
                CustomElevatedButton(
                  onPressed: () {},
                  buttonText: 'Agree and Continue',
                ),
                const SizedBox(height: 50),
                const LangugageButton()
              ],
            ))
          ],
        ),
      ),
    );
  }
}
