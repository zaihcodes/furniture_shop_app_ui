import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/models/reviwe_model.dart';

class ClientReviewCard extends StatelessWidget {
  const ClientReviewCard({
    super.key,
    required this.review,
  });

  final ReviewModel review;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
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
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(review.clientImg),
        )
      ],
    );
  }

  Row buildReviewInfo(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              review.client,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 5.h),
            Wrap(
                children: List.generate(
                    5,
                    (index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        )))
          ],
        ),
        Text(
          review.date,
          style: theme.textTheme.bodyMedium!.copyWith(),
        ),
      ],
    );
  }
}
