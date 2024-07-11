import 'package:flutter/material.dart';
import 'package:furniture_shop_app_ui/core/data/product_data.dart';
import 'package:furniture_shop_app_ui/features/product/widget/my_reviews/my_review_card.dart';

import '../../core/data/reviwes_data.dart';

class MyReviewsScreen extends StatelessWidget {
  const MyReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: buildMyReviewsAppBar(theme, context),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(3, (index) {
              return MyReviewCard(
                  product: ProductData.data[index],
                  review: ReviwesData.reviwes[index]);
            }),
          ),
        ),
      ),
    );
  }

  Row buildReviewInfo(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          children: List.generate(
              5,
              (index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  )),
        ),
        Text(
          ReviwesData.reviwes[0].date,
          style: theme.textTheme.bodyMedium!.copyWith(),
        ),
      ],
    );
  }

  AppBar buildMyReviewsAppBar(ThemeData theme, BuildContext context) {
    return AppBar(
      backgroundColor: theme.colorScheme.surface,
      elevation: 0,
      scrolledUnderElevation: 0,
      leading: IconButton(
        icon: Image.asset('assets/icons/arrow_back.png'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'My reviews',
        style: theme.textTheme.titleMedium,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Image.asset('assets/icons/search.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
