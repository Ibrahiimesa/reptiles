import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry borderRadius;
  final Color borderColor;
  final double borderWidth;
  final Color shadowColor;
  final double shadowSpreadRadius;
  final double shadowBlurRadius;
  final Offset shadowOffset;

  CustomContainer({
    required this.child,
    this.padding = const EdgeInsets.all(12),
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.borderColor = Colors.black,
    this.borderWidth = 1,
    this.shadowColor = Colors.blueGrey,
    this.shadowSpreadRadius = 2,
    this.shadowBlurRadius = 4,
    this.shadowOffset = const Offset(0, 5),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: const Color(0xFFFDFDF6),
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.5),
            spreadRadius: shadowSpreadRadius,
            blurRadius: shadowBlurRadius,
            offset: shadowOffset,
          ),
        ],
      ),
      child: child,
    );
  }
}

class TextBody extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;

  TextBody({
    required this.text,
    required this.textAlign,
    required this.fontSize,
    required this.fontWeight,
    required this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.robotoSlab(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor
      ),
    );
  }
}

class TextHeading extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;

  TextHeading({
    required this.text,
    required this.fontSize,
    required this.textAlign,
    required this.fontWeight,
    required this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.titilliumWeb(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor,
      ),
    );
  }
}
