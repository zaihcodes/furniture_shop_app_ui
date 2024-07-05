import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shop_app_ui/core/utils/widgets/custom_button.dart';
import 'package:furniture_shop_app_ui/main_screen.dart';

class SuccessCheckOrderScreen extends StatelessWidget {
  const SuccessCheckOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.all(20),
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SUCCESS!',
              style: theme.textTheme.displayMedium,
            ),
            SizedBox(height: 20.h),
            Image.asset('assets/icons/success_icon.png'),
            SizedBox(height: 20.h),
            const Text(
                'Your order will be delivered sonn.\nThank you for choosing our app!'),
            SizedBox(height: 30.h),
            const CustomButton(text: 'Track your orders'),
            SizedBox(
              height: 15.h,
            ),
            CustomButton(
              text: 'BACK HOME',
              hasBorder: true,
              isMain: false,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
