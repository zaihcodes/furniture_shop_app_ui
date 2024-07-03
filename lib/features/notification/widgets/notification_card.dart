import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/notification_model.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.notification,
  });

  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: notification.viewed
            ? theme.colorScheme.secondary.withOpacity(0.2)
            : theme.colorScheme.surface,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          notification.hasImage
              ? Container(
                  height: 70.w,
                  width: 70.w,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      notification.imagePath!,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : SizedBox(),
          SizedBox(width: 8.w),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                notification.title,
                style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
              Text(
                notification.description,
                style: theme.textTheme.bodyMedium!.copyWith(
                  fontSize: 12,
                ),
              ),
              notification.status != notStatus.defaultOne
                  ? Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        notification.status == notStatus.newOne
                            ? 'New'
                            : 'Hot!',
                        style: theme.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: notification.status == notStatus.newOne
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                    )
                  : SizedBox(),
            ],
          ))
        ],
      ),
    );
  }
}
