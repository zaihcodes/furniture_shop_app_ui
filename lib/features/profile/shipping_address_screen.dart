import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/core/utils/widgets/custom_simple_app_bar.dart';

import '../cart/widgets/custom_card_shadow.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: CustomSimpleAppBar(context, theme, title: 'Shipping address'),
      floatingActionButton: FloatingActionButton(
        backgroundColor: theme.colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        onPressed: () {},
        child: Image.asset('assets/icons/plus.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildShippingAddressCard(theme: theme, checked: true),
              SizedBox(height: 20.h),
              buildShippingAddressCard(theme: theme, checked: false),
              SizedBox(height: 20.h),
              buildShippingAddressCard(theme: theme, checked: false),
            ],
          ),
        ),
      ),
    );
  }

  Column buildShippingAddressCard(
      {required ThemeData theme, bool checked = false}) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(value: checked, onChanged: (value) {}),
            Expanded(
                child: Text(
              'Use as the shipping address',
              style: theme.textTheme.bodyMedium!.copyWith(),
            ))
          ],
        ),
        CustomCardShadow(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ZaihCodes',
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/edit.png'))
                  ],
                )),
            Divider(
              height: 20,
              thickness: 1,
              color: theme.colorScheme.secondary.withOpacity(0.2),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20, right: 20),
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
        ))
      ],
    );
  }
}
