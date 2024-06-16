import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.bgColor,
    this.textColor = Colors.white,
    this.fontSize = 18,
    this.textStyle,
    this.onTap,
  });

  final String text;
  final Color? bgColor;
  final Color textColor;
  final double? fontSize;
  final TextStyle? textStyle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 54,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: (textStyle ?? theme.textTheme.bodyMedium)!.copyWith(
            fontSize: fontSize ?? 18,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
