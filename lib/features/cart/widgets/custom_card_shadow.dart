import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCardShadow extends StatelessWidget {
  const CustomCardShadow({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      // padding: EdgeInsets.all(10),
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
