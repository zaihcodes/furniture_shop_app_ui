import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_card_shadow.dart';

CustomCardShadow buildDeliveryMthodeCard(ThemeData theme) {
  return CustomCardShadow(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Image.asset(
            'assets/icons/dhl.png',
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 20.w,
          ),
          Text(
            'Fast (2-3days)',
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    ),
  );
}

CustomCardShadow buildPaymentCard(ThemeData theme) {
  return CustomCardShadow(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Image.asset(
            'assets/icons/mastercard_black_white.png',
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 20.w,
          ),
          Text(
            '**** **** **** 3947',
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    ),
  );
}

CustomCardShadow buildShippingAddressCard(ThemeData theme) {
  return CustomCardShadow(
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.all(15),
        child: Text(
          'ZaihCodes',
          style: theme.textTheme.bodyLarge!.copyWith(
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp),
        ),
      ),
      Divider(
        height: 1,
        color: theme.colorScheme.secondary.withOpacity(0.5),
      ),
      Padding(
        padding: EdgeInsets.all(15),
        child: Text(
          '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
          style: theme.textTheme.bodyMedium!.copyWith(
              // color: theme.colorScheme.primary,
              // fontWeight: FontWeight.w700,
              // fontSize: 20.sp,
              ),
        ),
      ),
    ],
  ));
}
