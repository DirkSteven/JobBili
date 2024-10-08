import 'package:flutter/material.dart';
import 'package:oprehab/screens/login_page.dart';
import 'package:flutter/rendering.dart';

// development mode, comment in production
void main() {
  debugPaintSizeEnabled = true;
  runApp(const MainApp());
}

// uncomment in production

// void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Login());
  }
}
