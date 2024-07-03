import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/features/notification/models/notification_model.dart';
import 'package:furniture_shop_app_ui/features/notification/widgets/notification_card.dart';

import 'data/notification_data.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: buildNotificationAppBar(theme, context),
      body: ListView.builder(
          itemCount: NotificationData.data.length,
          itemBuilder: (context, index) {
            final notification = NotificationData.data[index];
            return NotificationCard(notification: notification);
          }),
    );
  }

  AppBar buildNotificationAppBar(ThemeData theme, BuildContext context) {
    return AppBar(
      backgroundColor: theme.colorScheme.surface,
      elevation: 0,
      leading: Image.asset('assets/icons/search.png'),
      title: Text(
        'Notification',
        style: theme.textTheme.titleMedium,
      ),
      centerTitle: true,
    );
  }
}
