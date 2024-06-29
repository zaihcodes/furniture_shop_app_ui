import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/models/product_model.dart';
import '../../product/product_screen.dart';

class ProductGridViewItem extends StatelessWidget {
  const ProductGridViewItem({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductScreen(
                    product: product,
                  )),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(product.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.tertiary.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/icons/shopping_bag.png'),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            product.name,
            style:
                theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold
                    // fontSize: 14.sp,
                    ),
          ),
          Text(
            '\$ ${product.price}',
            style: theme.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w700,
              color: theme.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
