import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.text,
      this.isMain = true,
      this.hasBorder = false,
      this.onTap,
      super.key});

  final String text;
  final Function()? onTap;
  final bool isMain;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
            color: isMain ? theme.colorScheme.scrim : theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(10),
            border: hasBorder
                ? Border.all(
                    width: 1,
                    color: theme.colorScheme.secondary.withOpacity(.05))
                : null,
            boxShadow: isMain
                ? [
                    BoxShadow(
                      color: theme.colorScheme.shadow.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    )
                  ]
                : []),
        child: Center(
          child: Text(
            text,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: isMain
                  ? theme.colorScheme.surface
                  : theme.colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
