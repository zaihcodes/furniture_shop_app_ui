import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../models/category_model.dart';

class CategoryListWidget extends StatefulWidget {
  const CategoryListWidget({
    super.key,
  });

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  int _selectedCategory = 0;
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
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return buildCategoryItem(index, theme);
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 0.w,
        ),
        itemCount: categories.length,
      ),
    );
  }

  Container buildCategoryItem(int index, ThemeData theme) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedCategory = index;
          });
        },
        child: Column(
          children: [
            Container(
              width: 50.w,
              height: 50.w,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: _selectedCategory == index
                    ? theme.colorScheme.primary
                    : theme.colorScheme.secondary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: SvgPicture.asset(
                  categories[index].iconPath,
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
              categories[index].name,
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
      ),
    );
  }
}
