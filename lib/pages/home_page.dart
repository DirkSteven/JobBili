import 'package:flutter/material.dart';
import 'package:million_dollar_startup/widgets/service_post_card.dart';
import '../dummy/service_posts_data.dart';

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
      
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: servicePostCards.length,
        itemBuilder: (context, index) {
          return servicePostCards[index];
        },
      ),
    );
  }
}