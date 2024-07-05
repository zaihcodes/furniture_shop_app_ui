import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileUserInfo extends StatelessWidget {
  const ProfileUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Container(
          width: 80.w,
          height: 80.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              image: const DecorationImage(
                image: AssetImage('assets/persons/view3.png'),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(width: 20.w),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ZaIhCodes',
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'zaihcodes@gmail.com',
              style: theme.textTheme.bodyMedium!.copyWith(),
            )
          ],
        ))
      ],
    );
  }
}
