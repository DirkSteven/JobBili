import 'package:flutter/material.dart';
import 'package:million_dollar_startup/styles/colors.dart';

import 'main_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryYellow),
        useMaterial3: true,
      ),
      home: const MainNav(),
    );
  }
}


