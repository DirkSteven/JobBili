import 'package:flutter/material.dart';
import '../widgets/header.dart'; // Import the header.dart file
import '../widgets/services_icons.dart'; // Import the services_icons.dart file

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12, 
      body: Column(
        children: [
        
          CustomHeader(),

          SizedBox(height: 20),

          ServicesIcons(),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Available workers nearby",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87, 
                ),
              ),
            ),
          ),

          
          SizedBox(height: 20),

          
          Expanded(
            child: Center(
              child: Text(
                "Home",
                style: TextStyle(fontSize: 16, color: Colors.black87), 
              ),
            ),
          ),
        ],
      ),
    );
  }
}
