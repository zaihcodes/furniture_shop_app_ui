import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSearching = false;
  String _searchText = "";
  int _selectedCategory = 1;
  final List<CategoryModel> categories = [
    CategoryModel(name: 'Popular', iconPath: 'assets/svg/star.svg'),
    CategoryModel(name: 'Chair', iconPath: 'assets/svg/chair.svg'),
    CategoryModel(name: 'Table', iconPath: 'assets/svg/table.svg'),
    CategoryModel(name: 'Armchair', iconPath: 'assets/svg/armchir.svg'),
    CategoryModel(name: 'Bed', iconPath: 'assets/svg/bed.svg'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: buildHomeAppBar(theme),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return index == 0
                        ? SizedBox(width: 0)
                        : GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  width: 50.w,
                                  height: 50.w,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: _selectedCategory == index
                                        ? theme.colorScheme.primary
                                        : theme.colorScheme.secondary
                                            .withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      categories[index - 1].iconPath,
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          _selectedCategory == index
                                              ? theme.colorScheme.surface
                                              : theme.colorScheme.primary,
                                          BlendMode.srcIn),
                                      // width: 30.w,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  categories[index - 1].name,
                                  overflow: TextOverflow.visible,
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: _selectedCategory == index
                                        ? theme.colorScheme.primary
                                        : theme.colorScheme.secondary,
                                  ),
                                )
                              ],
                            ),
                          );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.w,
                  ),
                  itemCount: categories.length + 1,
                ))
          ],
        ),
      ),
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
                    child: Expanded(
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
                  ),
            IconButton(
              icon: Image.asset(
                'assets/icons/cart.png',
              ),
              onPressed: () {
                // Handle cart icon press
              },
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

class CategoryModel {
  final String name;
  final String iconPath;
  const CategoryModel({
    required this.name,
    required this.iconPath,
  });
}
