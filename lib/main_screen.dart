import 'package:flutter/material.dart';
import 'package:furniture_shop_app_ui/features/home/home_screen.dart';
import 'package:furniture_shop_app_ui/features/product/favorite_products_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentScreen = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    FavoriteProductsScreen(),
    Center(child: Text('Notifications')),
    Center(child: Text('Profile')),
  ];

  final List<String> _bottomNavItems = [
    'home',
    'marker',
    'bell',
    'person',
  ];

  void _onScreenChange(index) {
    setState(() {
      _currentScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: _screens[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onScreenChange,
        currentIndex: _currentScreen,
        // selectedFontSize: 14.0, // Set the same size for selected
        showSelectedLabels: false,
        items: List.generate(_bottomNavItems.length, (index) {
          return BottomNavigationBarItem(
            icon: Image.asset('assets/icons/${_bottomNavItems[index]}.png'),
            activeIcon: Image.asset(
                'assets/icons/${_bottomNavItems[index]}_active.png'),
            label: '',
          );
        }),
      ),
    );
  }
}
