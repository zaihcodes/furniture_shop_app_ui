import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/widgets/custom_simple_app_bar.dart';

class PaymentMethodeScreen extends StatelessWidget {
  const PaymentMethodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: CustomSimpleAppBar(context, theme, title: 'Payment method'),
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
        child: Column(
          children: [
            SizedBox(height: 40.h),
            buildPaymentMethodeCart(theme,
                checked: true, iconPath: 'mastercard'),
            SizedBox(height: 20.h),
            buildPaymentMethodeCart(theme, checked: false, iconPath: 'visa'),
          ],
        ),
      ),
    );
  }

  Column buildPaymentMethodeCart(ThemeData theme,
      {bool checked = false, required String iconPath}) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Positioned(
                right: -10,
                bottom: 0,
                child: Image.asset('assets/icons/cart_vector.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/icons/$iconPath.png'),
                    SizedBox(height: 15.h),
                    Text(
                      '* * * *  * * * *  * * * *  3947',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: Colors.grey,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Card Holder Name',
                              style: theme.textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Zakaria',
                              style: theme.textTheme.bodyMedium!.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Expiry Date',
                              style: theme.textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '05/25',
                              style: theme.textTheme.bodyMedium!.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              checked
                  ? const SizedBox()
                  : Positioned(
                      left: 0,
                      top: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            Checkbox(value: checked, onChanged: (value) {}),
            Expanded(
                child: Text(
              'Use as default payment methode',
              style: theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ))
          ],
        ),
      ],
    );
  }
}
