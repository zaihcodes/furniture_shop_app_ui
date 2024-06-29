import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/core/models/product_model.dart';
import 'package:furniture_shop_app_ui/features/home/widgets/product_grid_view_item.dart';

import '../../../core/data/product_data.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GridView.builder(
        itemCount: ProductData.data.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) {
          final product = ProductData.data[index];
          return ProductGridViewItem(product: product);
        },
      ),
    );
  }
}
