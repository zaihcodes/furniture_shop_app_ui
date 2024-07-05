import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/core/utils/widgets/custom_button.dart';
import 'package:furniture_shop_app_ui/features/cart/success_check_order_screen.dart';
import 'package:furniture_shop_app_ui/features/cart/widgets/cards_widgets.dart';
import 'package:furniture_shop_app_ui/features/cart/widgets/check_out_card_title.dart';
import 'package:furniture_shop_app_ui/features/cart/widgets/check_out_detail.dart';
import 'package:furniture_shop_app_ui/features/cart/widgets/custom_cart_app_bar.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CustomCartAppBar(title: 'Check out'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        width: size.width,
        child: Column(
          children: [
            CheckoutCardTitle(title: 'Shipping Address', size: 18),
            SizedBox(height: 5.h),
            buildShippingAddressCard(theme),
            SizedBox(height: 15.h),
            CheckoutCardTitle(title: 'Payment', size: 18),
            SizedBox(height: 5.h),
            buildPaymentCard(theme),
            SizedBox(height: 15.h),
            CheckoutCardTitle(title: 'Delivery methode', size: 18),
            SizedBox(height: 5.h),
            buildDeliveryMthodeCard(theme),
            SizedBox(height: 15.h),
            CheckOutDetail(),
            SizedBox(height: 15.h),
            CustomButton(
              text: 'SUBMIT ORDER',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SuccessCheckOrderScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
