import 'package:flutter/material.dart';

AppBar CustomSimpleAppBar(BuildContext context, ThemeData theme) {
  return AppBar(
    backgroundColor: theme.colorScheme.surface,
    elevation: 0,
    scrolledUnderElevation: 0,
    leading: IconButton(
      icon: Image.asset('assets/icons/arrow_back.png'),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: Text(
      'Rating & review',
      style: theme.textTheme.titleMedium,
    ),
    centerTitle: true,
  );
}
