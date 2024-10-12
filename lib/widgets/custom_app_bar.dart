import 'package:flutter/material.dart';
import 'package:million_dollar_startup/styles/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const CustomAppBar({required this.title, this.actions, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryFontColorBlack,
        ),
      ),
      centerTitle: true, 
      backgroundColor: AppColors.primaryYellow, 
      elevation: 5,

      actions: actions, 
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0); 
}
