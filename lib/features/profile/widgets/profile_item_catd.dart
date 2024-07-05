import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileItemCard extends StatelessWidget {
  const ProfileItemCard({
    super.key,
    required this.title,
    required this.subTitle,
    this.onPressed,
  });
  final String title;
  final String subTitle;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.secondary.withOpacity(0.2),
              blurRadius: 15,
              offset: Offset(0, 5),
            )
          ]),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subTitle,
                  style: theme.textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          IconButton(
              onPressed: onPressed,
              icon: Image.asset('assets/icons/arrow_forward.png'))
        ],
      ),
    );
  }
}
