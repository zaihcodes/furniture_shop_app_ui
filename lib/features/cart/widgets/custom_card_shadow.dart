import 'package:flutter/material.dart';

class CustomCardShadow extends StatelessWidget {
  const CustomCardShadow({
    super.key,
    required this.child,
    this.padding = 0,
  });
  final Widget child;
  final double padding;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.shadow.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ]),
      child: child,
    );
  }
}
