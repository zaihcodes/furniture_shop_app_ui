import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/core/utils/widgets/custom_simple_app_bar.dart';
import 'package:furniture_shop_app_ui/features/cart/widgets/custom_card_shadow.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: CustomSimpleAppBar(context, theme, title: 'Setting'),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildRowTitle(theme, text: 'Personnal Information'),
              CustomCardShadow(
                padding: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Name'),
                    Text(
                      'ZaihCodes',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.primary,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              CustomCardShadow(
                padding: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Email'),
                    Text(
                      'zaza@gmail.com',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.primary,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              buildRowTitle(theme, text: 'Password'),
              CustomCardShadow(
                padding: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('password'),
                    Text(
                      '*********',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.primary,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              buildRowTitle(theme, text: 'Notification', hasEdit: false),
              CustomCardShadow(
                padding: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sales',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Colors.green,
                    ),
                  ],
                ),
              ),
              CustomCardShadow(
                padding: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New arrivals',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    Switch(
                      value: false,
                      onChanged: (value) {},
                      activeColor: Colors.green,
                      inactiveTrackColor: Colors.grey.withOpacity(0.3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildRowTitle(ThemeData theme,
      {required String text, bool hasEdit = true}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: theme.textTheme.bodyLarge,
        ),
        hasEdit
            ? IconButton(
                onPressed: () {}, icon: Image.asset('assets/icons/edit.png'))
            : const SizedBox(),
      ],
    );
  }
}
