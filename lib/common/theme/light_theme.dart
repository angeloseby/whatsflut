import 'package:flutter/material.dart';
import 'package:whatsflut/common/extension/custom_theme_extension.dart';
import 'package:whatsflut/common/utils/color_pallete.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      backgroundColor: ColorPallete.backgroundLight,
      scaffoldBackgroundColor: ColorPallete.backgroundLight,
      extensions: [
        CustomThemeExtension.lightMode,
      ],
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorPallete.greenLight,
          foregroundColor: ColorPallete.backgroundLight,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
      ));
}
