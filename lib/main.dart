import 'package:flutter/material.dart';
import 'package:oprehab/screens/screens.dart';
// import 'package:flutter/rendering.dart';
import 'package:oprehab/styles/colors.dart';
import 'package:google_fonts/google_fonts.dart';

// development mode, comment in production
void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MainApp());
}

// uncomment in production

// void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: const ColorScheme(
                brightness: Brightness.light,
                primary: LocalColorsLight.black,
                onPrimary: LocalColorsLight.neutral,
                secondary: LocalColorsLight.accent,
                onSecondary: LocalColorsLight.primary,
                error: LocalColorsLight.error_colors,
                onError: LocalColorsLight.neutral,
                surface: LocalColorsLight.white,
                onSurface: LocalColorsLight.black),
            textTheme: GoogleFonts.interTextTheme(Theme.of(context)
                .textTheme
                .apply()
                .copyWith(
                    displayLarge:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)))),
          
        debugShowCheckedModeBanner: false,
        home: const Login());
  }
}
