import 'package:flutter/material.dart';
import 'package:million_dollar_startup/widgets/service_post_card.dart';
import '../dummy/service_posts_data.dart';
import '../widgets/header.dart'; // Import the header.dart file
import '../widgets/services_icons.dart'; // Import the services_icons.dart file

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    List<ServicePostCard> servicePostCards = servicePostsDummyData.map((servicePost) {
      return ServicePostCard(servicePostData: servicePost);
    }).toList();


return Scaffold(
      // AppBar with amber, grey[900], and white theme, and Drawer widget
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(
            fontFamily: 'Montserrat', // Custom font if needed
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white, // White title text
          ),
        ),
        centerTitle: true, // Centered title
        backgroundColor: Colors.grey[900], // Grey[900] background color
        elevation: 5, // Slight shadow effect
      ),
      
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

          ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: servicePostCards.length,
        itemBuilder: (context, index) {
          return servicePostCards[index];
        },
      ),


        ],
      ),
    );
  }
}
