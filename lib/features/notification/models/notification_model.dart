enum notStatus { newOne, hotOne, defaultOne }

class NotificationModel {
  final String title;
  final String description;
  final String? imagePath;
  final notStatus status;
  final bool viewed;
  final bool hasImage;

  NotificationModel({
    required this.title,
    required this.description,
    this.imagePath,
    this.status = notStatus.defaultOne,
    this.viewed = false,
    this.hasImage = true,
  });
}
