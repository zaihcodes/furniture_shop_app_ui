import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/core/models/product_model.dart';
import 'package:furniture_shop_app_ui/core/utils/widgets/custom_button.dart';
import 'package:furniture_shop_app_ui/features/product/widget/review/clients_review_list.dart';
import 'package:furniture_shop_app_ui/features/product/widget/review/product_review_card.dart';

import '../../core/utils/widgets/custom_simple_app_bar.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: CustomSimpleAppBar(context, theme, title: 'Rating & review'),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ProductReviewCard(product: product),
            Divider(
              height: 25.h,
              thickness: 1,
              color: theme.colorScheme.secondary.withOpacity(0.3),
            ),
            const ClientsReviewsList(),
            const CustomButton(text: 'Write a review'),
          ],
        ),
      ),
    );
  }
}
