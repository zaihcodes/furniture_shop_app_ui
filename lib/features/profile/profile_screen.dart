import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/features/profile/widgets/profile_item_catd.dart';
import 'package:furniture_shop_app_ui/features/profile/widgets/profile_user_info.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: buildProfileAppBar(theme, context),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            const ProfileUserInfo(),
            SizedBox(height: 20.h),
            const ProfileItemCard(
                title: 'My orders', subTitle: 'Already have 10 orders'),
            const ProfileItemCard(
                title: 'Shipping Addresses', subTitle: '03 Addresses'),
            const ProfileItemCard(
                title: 'Payment Method', subTitle: 'You have 2 cards'),
            const ProfileItemCard(
                title: 'My reviews', subTitle: 'Reviews for 5 item'),
            const ProfileItemCard(
                title: 'Setting',
                subTitle: 'Notification, Password, FAQ, Contact'),
          ],
        ),
      ),
    );
  }

  AppBar buildProfileAppBar(ThemeData theme, BuildContext context) {
    return AppBar(
      backgroundColor: theme.colorScheme.surface,
      elevation: 0,
      scrolledUnderElevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Image.asset('assets/icons/search.png'),
      ),
      title: Text(
        'Profile',
        style: theme.textTheme.titleMedium,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset('assets/icons/logout.png'),
        ),
      ],
    );
  }
}
