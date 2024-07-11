import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/core/models/product_model.dart';
import 'package:furniture_shop_app_ui/core/models/reviwe_model.dart';

class MyReviewCard extends StatelessWidget {
  const MyReviewCard({
    super.key,
    required this.product,
    required this.review,
  });
  final ProductModel product;
  final ReviewModel review;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 20.h),
      decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.shadow.withOpacity(0.2),
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ]),
      child: Column(
        children: [
          Row(
            children: [
              buildMyReviewProductCard(),
              SizedBox(width: 15.w),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name, style: theme.textTheme.bodyLarge),
                  SizedBox(height: 5.h),
                  Text('\$ ${product.price}',
                      style: theme.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.primary,
                      )),
                ],
              ))
            ],
          ),
          SizedBox(height: 10.h),
          buildReviewInfo(theme),
          SizedBox(height: 10.h),
          Text(
            review.review,
            style: theme.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Container buildMyReviewProductCard() {
    return Container(
      width: 80.w,
      height: 80.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          product.imagePath,
          fit: BoxFit.cover,
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
          review.date,
          style: theme.textTheme.bodyMedium!.copyWith(),
        ),
      ],
    );
  }
}
