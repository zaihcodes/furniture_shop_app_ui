import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInUpHeader extends StatelessWidget {
  const SignInUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: theme.colorScheme.onSurface,
          ),
        ),
        SizedBox(width: 20),
        Image.asset(
          // 'assets/images/onboarding.png',
          'assets/icons/welcom_icon.png',
        ),
        SizedBox(width: 20),
        Expanded(
          child: Container(
            height: 1,
            color: theme.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}
