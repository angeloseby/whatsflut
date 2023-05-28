import 'package:flutter/material.dart';
import 'package:whatsflut/common/extension/custom_theme_extension.dart';
import 'package:whatsflut/common/utils/color_pallete.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    backgroundColor: ColorPallete.backgroundDark,
    scaffoldBackgroundColor: ColorPallete.backgroundDark,
    extensions: [
      CustomThemeExtension.darkMode,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorPallete.greenDark,
        foregroundColor: ColorPallete.backgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
  );
}
