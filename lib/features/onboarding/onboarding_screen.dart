import 'package:flutter/material.dart';
import 'package:furniture_shop_app_ui/core/utils/widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: size.width,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/onboarding.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100),
                  Text(
                    'MAKE YOUR',
                    style: theme.textTheme.displaySmall!.copyWith(
                      color: theme.colorScheme.secondary,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'HOME BEAUTIFUL',
                    style: theme.textTheme.displayMedium!.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 45),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'The best simple place where you discover most wonderful furnitures and make your home beautiful',
                      style: theme.textTheme.bodyLarge!.copyWith(
                        height: 2,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                  SizedBox(height: 150),
                  Center(
                    child: CustomButton(
                      text: 'Get Started',
                      textStyle: theme.textTheme.displaySmall,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
