import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:flutter/material.dart';

class GenericButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final Color? primaryColor;
  final Color? shadowColor;

  const GenericButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.textStyle,
    this.primaryColor,
    this.height,
    this.shadowColor,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 48,
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
        style: ElevatedButton.styleFrom(
            shadowColor: shadowColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: textStyle?.copyWith(
                    fontSize: 18,
                    fontFamily: GoogleFonts.roboto().fontFamily) ??
                TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily, fontSize: 18),
            primary: primaryColor),
      ),
    );
  }
}
