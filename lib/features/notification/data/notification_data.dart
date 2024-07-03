import '../models/notification_model.dart';

class NotificationData {
  static List<NotificationModel> data = [
    NotificationModel(
      title: 'Your order #123456789 has been confirmed',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
      status: notStatus.newOne,
      imagePath: 'assets/images/minimal _stand.png',
      viewed: true,
    ),
    NotificationModel(
      title: 'Your order #123456789 has been canceled',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
      status: notStatus.defaultOne,
      imagePath: 'assets/images/black_simple_lamp.png',
      viewed: false,
    ),
    NotificationModel(
        title: 'Discover hot sale furnitures this week.',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
        status: notStatus.defaultOne,
        imagePath: 'assets/images/simple_desk.png',
        viewed: true,
        hasImage: false),
    NotificationModel(
      title: 'Your order #123456789 has been shipped successfully',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
      status: notStatus.defaultOne,
      imagePath: 'assets/images/coffee_table.png',
    ),
    NotificationModel(
      title: 'Your order #123456789 has been confirmed',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
      status: notStatus.defaultOne,
      imagePath: 'assets/images/coffee_table.png',
    ),
    NotificationModel(
      title: 'Your order #123456789 has been canceled',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
      status: notStatus.defaultOne,
      imagePath: 'assets/images/simple_desk.png.png',
    ),
  ];
}
