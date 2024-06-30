import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/core/models/product_model.dart';
import 'package:furniture_shop_app_ui/core/utils/widgets/custom_button.dart';
import 'package:furniture_shop_app_ui/features/product/widget/product_banner.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    super.key,
    required this.product,
  });
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductBanner(
            product: product,
          ),
          SizedBox(height: 15.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: theme.textTheme.displaySmall,
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '\$ ${product.price}',
                          style: theme.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.secondary
                                    .withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset('assets/icons/plus.png'),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            '01',
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: theme.colorScheme.primary,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          GestureDetector(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.secondary
                                    .withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset('assets/icons/minus.png'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                        size: 20.w,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        '${product.rating}',
                        style: theme.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Text(
                        '(${product.review} reviews)',
                        style: theme.textTheme.bodyMedium!.copyWith(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    product.description,
                    style: theme.textTheme.bodyMedium!.copyWith(
                        color: Colors.grey, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: theme.colorScheme.secondary.withOpacity(0.2),
                        ),
                        child: Image.asset('assets/icons/marker.png'),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                          child: CustomButton(
                        text: 'Add to cart',
                      ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
