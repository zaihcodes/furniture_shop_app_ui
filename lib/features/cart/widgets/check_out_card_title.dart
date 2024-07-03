import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutCardTitle extends StatelessWidget {
  const CheckoutCardTitle({
    super.key,
    required this.title,
    required this.size,
  });

  final String title;
  final int size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: theme.textTheme.bodyLarge!.copyWith(
            fontSize: size.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset('assets/icons/edit.png'),
        ),
      ],
    );
  }
}
