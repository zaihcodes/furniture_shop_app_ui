import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/data/reviwes_data.dart';
import 'client_review_card.dart';

class ClientsReviewsList extends StatelessWidget {
  const ClientsReviewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemCount: ReviwesData.reviwes.length,
          separatorBuilder: (context, index) => SizedBox(height: 15.h),
          itemBuilder: (context, index) {
            final review = ReviwesData.reviwes[index];
            return ClientReviewCard(review: review);
          }),
    );
  }
}
