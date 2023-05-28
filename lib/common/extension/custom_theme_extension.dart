import 'package:flutter/material.dart';
import 'package:whatsflut/common/utils/color_pallete.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme =>
      Theme.of(this).extension<CustomThemeExtension>()!;
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
    circleImgColor: Color(0xFF25D366),
    greyColor: ColorPallete.greyLight,
    blueColor: ColorPallete.blueLight,
    langButtonBgColor: Color(0xFFF7F8FA),
    langButtonHighlightColor: Color(0xFFE8E8ED),
  );

  static const darkMode = CustomThemeExtension(
    circleImgColor: ColorPallete.greenDark,
    greyColor: ColorPallete.greyDark,
    blueColor: ColorPallete.blueDark,
    langButtonBgColor: Color(0xFF182229),
    langButtonHighlightColor: Color(0xFF09141A),
  );

  final Color? circleImgColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langButtonBgColor;
  final Color? langButtonHighlightColor;

  const CustomThemeExtension({
    this.circleImgColor,
    this.greyColor,
    this.blueColor,
    this.langButtonBgColor,
    this.langButtonHighlightColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImgColor,
    Color? greyColor,
    Color? blueColor,
    Color? langButtonBgColor,
    Color? langButtonHighlightColor,
  }) {
    return CustomThemeExtension(
      circleImgColor: circleImgColor ?? this.circleImgColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langButtonBgColor: langButtonBgColor ?? this.langButtonBgColor,
      langButtonHighlightColor:
          langButtonHighlightColor ?? this.langButtonHighlightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImgColor: Color.lerp(circleImgColor, other.circleImgColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langButtonBgColor:
          Color.lerp(langButtonBgColor, other.langButtonBgColor, t),
      langButtonHighlightColor: Color.lerp(
          langButtonHighlightColor, other.langButtonHighlightColor, t),
    );
  }
}
