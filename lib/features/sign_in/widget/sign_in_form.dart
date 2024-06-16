import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/widgets/custom_button.dart';
import '../../../core/utils/widgets/custom_text_field.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(30.w, 30.w, 0.w, 30.w),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 3,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomTextField(labelText: 'Email'),
          SizedBox(height: 30.h),
          const CustomTextField(
            labelText: 'Password',
            obscureText: true,
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Column(
              children: [
                Text(
                  'Forget the password',
                  style: theme.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.primary,
                  ),
                ),
                SizedBox(height: 30.h),
                CustomButton(text: 'Log in', onTap: () {}),
                SizedBox(height: 15.h),
                CustomButton(text: 'SIGN UP', isMain: false, onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
