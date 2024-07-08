import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderStatusList extends StatefulWidget {
  const OrderStatusList({super.key});

  @override
  State<OrderStatusList> createState() => _OrderStatusListState();
}

class _OrderStatusListState extends State<OrderStatusList> {
  int _selectedIndex = 0;
  final List<String> _orderStatusList = [
    'Delivered',
    'Processing',
    'Canceled',
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(_orderStatusList.length, (index) {
        return buildOrderStatusItem(index, theme);
      }),
    );
  }

  GestureDetector buildOrderStatusItem(int index, ThemeData theme) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            _orderStatusList[index],
            style: theme.textTheme.bodyLarge!.copyWith(
              color: index == _selectedIndex
                  ? theme.colorScheme.primary
                  : theme.colorScheme.secondary,
              fontWeight:
                  index == _selectedIndex ? FontWeight.w700 : FontWeight.w500,
            ),
          ),
          SizedBox(height: 5.h),
          Container(
            height: index == _selectedIndex ? 3 : 0,
            width: 30.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: theme.colorScheme.primary,
            ),
          )
        ],
      ),
    );
  }
}
