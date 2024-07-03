import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_card_shadow.dart';

class CheckOutDetail extends StatelessWidget {
  const CheckOutDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomCardShadow(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
        child: Column(
          children: [
            buildCheckoutDetailItem(theme, 'Order', 95.00),
            SizedBox(height: 10.h),
            buildCheckoutDetailItem(theme, 'Delivery', 5.00),
            SizedBox(height: 10.h),
            buildCheckoutDetailItem(theme, 'Total', 100.00),
          ],
        ),
      ),
    );
  }

  Row buildCheckoutDetailItem(ThemeData theme, String text, double price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$text:',
          style: theme.textTheme.bodyLarge!.copyWith(
            fontSize: 22.sp,
          ),
        ),
        Text(
          '\$ $price',
          style: theme.textTheme.bodyLarge!.copyWith(
            fontSize: 22.sp,
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
