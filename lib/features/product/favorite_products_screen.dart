import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/core/data/product_data.dart';
import 'package:furniture_shop_app_ui/core/utils/widgets/custom_button.dart';
import 'package:furniture_shop_app_ui/features/cart/cart_screen.dart';
import 'package:furniture_shop_app_ui/features/product/widget/favorite_product_list.dart';

class FavoriteProductsScreen extends StatelessWidget {
  const FavoriteProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: buildFavoriteAppBar(theme, context),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            const Expanded(
              child: FavoriteProductsList(),
            ),
            CustomButton(
              text: 'Add all to my cart',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              },
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  AppBar buildFavoriteAppBar(ThemeData theme, BuildContext context) {
    return AppBar(
      backgroundColor: theme.colorScheme.surface,
      elevation: 0,
      leading: Image.asset('assets/icons/search.png'),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartScreen()),
            );
          },
          icon: Image.asset('assets/icons/cart.png'),
        ),
        SizedBox(width: 10.w),
      ],
      title: Text(
        'Favorites',
        style: theme.textTheme.titleMedium,
      ),
      centerTitle: true,
    );
  }
}
