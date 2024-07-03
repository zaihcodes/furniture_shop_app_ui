import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_app_ui/core/data/product_data.dart';
import 'package:furniture_shop_app_ui/features/home/widgets/category_list_widget.dart';
import 'package:furniture_shop_app_ui/features/home/widgets/product_grid_view.dart';

import '../cart/cart_screen.dart';
import 'models/category_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSearching = false;
  String _searchText = "";
  int _selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: buildHomeAppBar(theme),
      body: Column(
        children: [
          SizedBox(height: 20.h),
          CategoryListWidget(),
          SizedBox(height: 10.h),
          buildProductGridView()
        ],
      ),
    );
  }

  Expanded buildProductGridView() {
    return Expanded(
      child: ProductGridView(),
    );
  }

  PreferredSize buildHomeAppBar(ThemeData theme) {
    return PreferredSize(
      preferredSize: Size.fromHeight(80),
      child: Container(
        padding: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            IconButton(
              icon: _isSearching
                  ? Image.asset('assets/icons/remove.png')
                  : Image.asset('assets/icons/search.png'),
              onPressed: () {
                setState(() {
                  _isSearching = !_isSearching;
                });
              },
            ),
            _isSearching
                ? Expanded(child: _buildSearchField())
                : Expanded(
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        Text(
                          'Make home',
                          style: theme.textTheme.titleLarge!.copyWith(
                            color: theme.colorScheme.secondary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'BEAUTIFUL',
                          style: theme.textTheme.titleLarge!.copyWith(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              },
              icon: Image.asset('assets/icons/cart.png'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return Container(
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
          hintText: 'Search products...',
          border: InputBorder.none,
        ),
        style: TextStyle(color: Colors.white, fontSize: 18),
        onChanged: (query) {
          setState(() {
            _searchText = query;
          });
        },
      ),
    );
  }
}
