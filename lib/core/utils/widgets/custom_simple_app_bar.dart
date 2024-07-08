import 'package:flutter/material.dart';

AppBar CustomSimpleAppBar(BuildContext context, ThemeData theme,
    {required String title}) {
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
      title,
      style: theme.textTheme.titleMedium,
    ),
    centerTitle: true,
  );
}
