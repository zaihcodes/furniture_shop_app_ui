import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/features/cart/widgets/cart_products_list.dart';

import '../../core/utils/widgets/custom_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: buildCartAppBar(theme),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            const Expanded(
              child: CartProductsList(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  buildCartPromoCode(theme),
                  SizedBox(height: 10.h),
                  buildCartTotal(theme),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            CustomButton(
              text: 'Check out',
              onTap: () {
                // Navigator.push(
                // context,
                // MaterialPageRoute(builder: (context) => CartScreen()),
                // );
              },
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Container buildCartPromoCode(ThemeData theme) {
    return Container(
      decoration: BoxDecoration(color: theme.colorScheme.surface, boxShadow: [
        BoxShadow(
          color: theme.colorScheme.scrim.withOpacity(0.1),
          blurRadius: 5,
          offset: Offset(0, 2),
        )
      ]),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter your promo code',
                  hintStyle: theme.textTheme.bodyMedium,
                  contentPadding: EdgeInsets.only(left: 10)),
            ),
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset('assets/icons/arrow_forward_white.png'),
            ),
          )
        ],
      ),
    );
  }

  Row buildCartTotal(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total:',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          '\$ 57.00',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }

  AppBar buildCartAppBar(ThemeData theme) {
    return AppBar(
      backgroundColor: theme.colorScheme.surface,
      elevation: 0,
      leading: Image.asset('assets/icons/arrow_back.png'),
      title: Text(
        'My cart',
        style: theme.textTheme.titleMedium,
      ),
      centerTitle: true,
    );
  }
}
