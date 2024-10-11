import 'package:flutter/material.dart';
import 'package:million_dollar_startup/widgets/service_post_card.dart';
import '../dummy/service_posts_data.dart';
import '../widgets/header.dart';
import '../widgets/services_icons.dart'; // Import the services_icons.dart file

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ServicePostCard> servicePostCards = servicePostsDummyData.map((servicePost) {
      return ServicePostCard(servicePostData: servicePost);
    }).toList();

    return Scaffold(
      // Use CustomHeader as the AppBar
      appBar: const CustomHeader(),

       body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ServicesIcons(), // ServicesIcons widget at the top
            const SizedBox(height: 20), // Spacing

            // "Available Jobs" section with custom styling
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: const [
                  SizedBox(width: 8),
                  Text(
                    "Available Jobs",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87, // Darker color for heading
                    ),
                  ),
                ],
              ),
            ),


            // Service Post Cards
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(), // Disable scrolling of ListView (already inside a SingleChildScrollView)
              padding: const EdgeInsets.all(8),
              itemCount: servicePostCards.length,
              itemBuilder: (context, index) {
                return servicePostCards[index];
              },
            ),
          ],
        ),
      ),
    );
  }
}
