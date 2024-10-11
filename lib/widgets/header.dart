import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'JobBili',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      centerTitle: true, // Center the title
      backgroundColor: Colors.amber, // Amber background for app bar
      elevation: 5, // Optional: Slight shadow effect
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0); // Standard AppBar height
}
