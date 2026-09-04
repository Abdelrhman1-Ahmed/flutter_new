import 'package:flutter/material.dart';

class CategoryItem {
  final String id;
  final String name;
  final IconData icon;
  final Color borderColor;
  final Color backgroundColor;

  const CategoryItem({
    required this.id,
    required this.name,
    required this.icon,
    required this.borderColor,
    required this.backgroundColor,
  });
}
