import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/features/sign_in/sign_in_screen.dart';

import '../../../core/utils/widgets/custom_button.dart';
import '../../../core/utils/widgets/custom_text_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

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
          const CustomTextField(labelText: 'Name'),
          SizedBox(height: 30.h),
          const CustomTextField(labelText: 'Email'),
          SizedBox(height: 30.h),
          const CustomTextField(
            labelText: 'Password',
            obscureText: true,
          ),
          SizedBox(height: 30.h),
          const CustomTextField(
            labelText: 'Confirm Password',
            obscureText: true,
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Column(
              children: [
                CustomButton(text: 'SIGN UP', onTap: () {}),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have account? ',
                      style: theme.textTheme.bodyMedium,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()),
                          );
                        },
                        child: Text(
                          'SIGN IN',
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
