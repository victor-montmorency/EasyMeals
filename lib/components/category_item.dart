import 'package:flutter/material.dart';
import 'package:meals/utils/app_routes.dart';
import '../screens/categories_meals_screen.dart';
import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category? category;
  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed(AppRoutes.CATEGORIES_MEALS, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.black,
      onTap: () => _selectCategory(context),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          category!.title,
          style: Theme.of(context).textTheme.headline2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              colors: [category!.color, category!.color.withOpacity(0.5)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
        ),
      ),
    );
  }
}
