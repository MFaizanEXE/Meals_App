import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

class CategoryGirdItems extends StatelessWidget {
  final Category category;
  final VoidCallback onSelectCategory;

  const CategoryGirdItems({
    required this.category,
    required this.onSelectCategory,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.6),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
