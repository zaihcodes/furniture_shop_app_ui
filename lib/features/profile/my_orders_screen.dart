import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/core/utils/widgets/custom_simple_app_bar.dart';
import 'package:furniture_shop_app_ui/features/cart/widgets/custom_card_shadow.dart';
import 'package:furniture_shop_app_ui/features/profile/widgets/my_order/order_card.dart';
import 'package:furniture_shop_app_ui/features/profile/widgets/my_order/order_status_list.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  List<ProductOrder> orders = [
    ProductOrder(
        number: 'PO12345', price: 150.0, quantity: 2, date: '2024-07-08'),
    ProductOrder(
        number: 'PO12346', price: 200.0, quantity: 1, date: '2024-07-09'),
    ProductOrder(
        number: 'PO12347', price: 300.0, quantity: 3, date: '2024-07-10'),
    ProductOrder(
        number: 'PO12348', price: 250.0, quantity: 4, date: '2024-07-11'),
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: CustomSimpleAppBar(context, theme, title: 'My order'),
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          children: [
            OrderStatusList(),
            SizedBox(height: 20.h),
            Expanded(
              child: ListView.separated(
                itemCount: orders.length,
                separatorBuilder: (context, index) => SizedBox(height: 20.h),
                itemBuilder: (context, index) {
                  final order = orders[index];
                  return OrderCard(order: order);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductOrder {
  final String number;
  final double price;
  final int quantity;
  final String date;

  ProductOrder(
      {required this.number,
      required this.price,
      required this.quantity,
      required this.date});
}
