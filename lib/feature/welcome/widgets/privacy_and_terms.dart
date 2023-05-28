import 'package:flutter/material.dart';
import 'package:whatsflut/common/extension/custom_theme_extension.dart';
import 'package:whatsflut/common/utils/color_pallete.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Read our ',
          style: TextStyle(
            color: context.theme.greyColor,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(color: context.theme.blueColor, height: 1.5),
            ),
            const TextSpan(
              text: '\nTap "Agree and Continue" to accept the ',
            ),
            TextSpan(
              text: '\nTerms of Services',
              style: TextStyle(
                color: context.theme.blueColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
