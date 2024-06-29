import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/core/models/product_model.dart';

class ProductBanner extends StatelessWidget {
  ProductBanner({super.key, required this.product});
  final ProductModel product;

  final List<Map<String, dynamic>> pColors = [
    {'color': Colors.white, 'isSelected': true},
    {'color': Colors.brown, 'isSelected': false},
    {'color': Colors.greenAccent, 'isSelected': false},
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 380.h,
      width: double.infinity,
      child: Stack(
        children: [
          buildProductBackgroud(),
          buildBackButton(context, theme),
          buildProductColorsList(theme),
        ],
      ),
    );
  }

  Positioned buildProductColorsList(ThemeData theme) {
    return Positioned(
      top: (380 / 2 - 160 / 2)
          .h, //Center the Product Colors to the vertical axis
      left: (50 - (15 + 30) / 2)
          .w, //Center the Product Colors to image background edge
      child: Container(
        height: 160.h,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(80),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.secondary.withOpacity(0.3),
                blurRadius: 2,
                offset: Offset(0, 2),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(pColors.length, (index) {
            final pColor = pColors[index];
            return buildColorProductColor(
              theme: theme,
              color: pColor['color'],
              isSelected: pColor['isSelected'],
            );
          }),
        ),
      ),
    );
  }

  Container buildColorProductColor({
    required ThemeData theme,
    required Color color,
    bool isSelected = false,
  }) {
    return Container(
      width: 30.w,
      height: 30.w,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: isSelected
            ? theme.colorScheme.secondary.withOpacity(0.8)
            : theme.colorScheme.secondary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(80),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(80),
        ),
      ),
    );
  }

  Positioned buildBackButton(BuildContext context, ThemeData theme) {
    return Positioned(
      top: 50.h,
      left: (50 - 35 / 2).w, // make it to the center of image left edge
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          width: 35.w,
          height: 35.w,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.secondary.withOpacity(0.3),
                blurRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Image.asset(
            'assets/icons/arrow_back.png',
          ),
        ),
      ),
    );
  }

  Container buildProductBackgroud() {
    return Container(
      margin: EdgeInsets.only(left: 50.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
        ),
        image: DecorationImage(
          image: AssetImage(product.imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
