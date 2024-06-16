import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/features/sign_up/widgets/sign_up_form.dart';

import '../../core/utils/widgets/auth/sign_in_up_header.dart';
import '../../core/utils/widgets/auth/sign_in_up_title.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SignInUpHeader(),
                  SizedBox(height: 10.h),
                  const SignInUpTitle(
                    title: 'WELCOME',
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.only(right: 30.0.w),
              child: const SignUpForm(),
            ),
          ],
        ),
      ),
    );
  }
}
