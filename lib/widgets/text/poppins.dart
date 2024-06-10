import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Poppins extends StatelessWidget {
  final String text;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactory;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  final Color? color;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final double? wordSpacing;
  final TextBaseline? textBaseline;
  final double? height;
  final TextLeadingDistribution? leadingDistribution;
  final Locale? styleLocale;
  final Paint? foreground;
  final Paint? background;
  final List<Shadow>? shadows;
  final List<FontFeature>? fontFeatures;
  final List<FontVariation>? fontVariation;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final TextDecorationStyle? decorationStyle;
  final double? decorationThickness;
  final String? debugLabel;
  final String? fontFamily;
  final List<String>? fontFamilyFallback;
  final String? package;
  final TextOverflow? styleOverflow;
  final TextStyle? textStyle;

  const Poppins(
      {super.key,
        required this.text,
        this.strutStyle,
        this.textAlign,
        this.textDirection,
        this.locale,
        this.softWrap,
        this.overflow,
        this.textScaleFactory,
        this.maxLines,
        this.semanticsLabel,
        this.textWidthBasis,
        this.textHeightBehavior,
        this.selectionColor,
        this.color,
        this.backgroundColor,
        this.fontSize,
        this.fontWeight,
        this.fontStyle,
        this.letterSpacing,
        this.wordSpacing,
        this.textBaseline,
        this.height,
        this.leadingDistribution,
        this.styleLocale,
        this.foreground,
        this.background,
        this.shadows,
        this.fontFeatures,
        this.fontVariation,
        this.decorationThickness,
        this.debugLabel,
        this.fontFamily,
        this.fontFamilyFallback,
        this.package,
        this.styleOverflow,
        this.textStyle,
        this.decoration,
        this.decorationColor,
        this.decorationStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      selectionColor: selectionColor,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactory,
      textWidthBasis: textWidthBasis,
      style: GoogleFonts.poppins(
        background: background,
        backgroundColor: backgroundColor,
        color: color,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        fontFeatures: fontFeatures,
        fontSize: fontSize,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        foreground: foreground,
        height: height,
        letterSpacing: letterSpacing,
        locale: styleLocale,
        shadows: shadows,
        textStyle: textStyle,
        textBaseline: textBaseline,
        wordSpacing: wordSpacing,
      ),
    );
  }
}