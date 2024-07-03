import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCartAppBar extends StatelessWidget {
  const CustomCartAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: theme.colorScheme.surface,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Image.asset('assets/icons/arrow_back.png'),
      ),
      title: Text(
        title,
        style: theme.textTheme.titleMedium,
      ),
      centerTitle: true,
    );
  }
}
