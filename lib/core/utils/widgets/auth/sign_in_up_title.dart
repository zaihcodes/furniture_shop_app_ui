import 'package:flutter/material.dart';

class SignInUpTitle extends StatelessWidget {
  const SignInUpTitle(
      {required this.title,
      this.fontWeight = FontWeight.w500,
      this.color,
      super.key});

  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      title,
      style: theme.textTheme.titleLarge!.copyWith(
        color: color ?? theme.colorScheme.primary,
        fontWeight: fontWeight,
        // fontSize: 26,
      ),
    );
  }
}
