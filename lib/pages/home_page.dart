import 'package:flutter/material.dart';
import 'package:million_dollar_startup/styles/colors.dart';
import '../dummy/service_posts_data.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/service_post_card.dart';
import '../widgets/services_icons.dart'; // Import the services_icons.dart file

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ServicePostCard> servicePostCards = servicePostsDummyData.map((servicePost) {
      return ServicePostCard(servicePostData: servicePost);
    }).toList();

    return Scaffold(
      appBar: CustomAppBar(
        title: "JobBili", 
        actions: [          
          IconButton(
              icon: const Icon(Icons.logout_rounded, color: AppColors.primaryBlack), // Logout icon with matching color
              onPressed: () {},
            ),
        ],
      ),

       body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ServicesIcons(), 
            const SizedBox(height: 20), 

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Available Jobs",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryFontColorBlack, 
                ),
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(), 
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
