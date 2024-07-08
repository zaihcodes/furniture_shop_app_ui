import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../cart/widgets/custom_card_shadow.dart';
import '../../my_orders_screen.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.order,
  });

  final ProductOrder order;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(5),
      child: CustomCardShadow(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order No${order.number}',
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    order.date,
                    style: theme.textTheme.bodySmall!.copyWith(),
                  ),
                ],
              ),
            ),
            Divider(
              height: 20.h,
              thickness: 1,
              color: theme.colorScheme.secondary.withOpacity(0.2),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Quantity: ',
                          style: theme.textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: order.quantity < 10
                              ? '0${order.quantity}'
                              : '${order.quantity}',
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Total Amount: ',
                          style: theme.textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: '\$${order.price}',
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(5)),
                    ),
                    child: Text(
                      'Detail',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
                    decoration: BoxDecoration(
                        // color: theme.colorScheme.primary,
                        // borderRadius: BorderRadius.horizontal(
                        //     right: Radius.circular(5)),
                        ),
                    child: Text(
                      'Delivered',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: Colors.green,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
