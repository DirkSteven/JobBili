import 'package:flutter/material.dart';
import 'package:million_dollar_startup/models/service_post.dart';
import 'package:million_dollar_startup/styles/colors.dart';
import 'package:million_dollar_startup/widgets/custom_app_bar.dart';
import 'package:million_dollar_startup/widgets/image_carousel.dart';

class ServicePostDetailsPage extends StatelessWidget {
  final ServicePost servicePost;
  
  const ServicePostDetailsPage({required this.servicePost, super.key});

  Widget buildSubDetails(IconData icon, String detail){
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Icon(icon, color: AppColors.primaryFontColorGrey),
          const SizedBox(width: 5),
          Text(detail, style: const TextStyle(color: AppColors.primaryFontColorGrey)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Service Details",
          actions: [          
            IconButton(
              icon: const Icon(Icons.message_rounded, color: AppColors.primaryBlack), 
              onPressed: () {},
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),

              Text(
                servicePost.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: AppColors.primaryFontColorBlack,
                ),
              ),

              Text(
                servicePost.category,
                style: const TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: AppColors.primaryFontColorGrey,
                ),
              ),
              const SizedBox(height: 15),

              ImageCarousel(images: servicePost.images),
              const SizedBox(height: 25),

              Text(
                servicePost.content,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.primaryFontColorBlack,
                ),
              ),
              const SizedBox(height: 25),

              buildSubDetails(Icons.attach_money, "${servicePost.lowerBudgetRange} - ${servicePost.upperBudgetRange}"),
              buildSubDetails(Icons.person, servicePost.userDisplayName),
              buildSubDetails(Icons.location_on, servicePost.location),
              buildSubDetails(Icons.calendar_today, servicePost.dateTime),
              const SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.check_circle),
                    label: const Text("Accept"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryYellow,
                      foregroundColor: AppColors.primaryFontColorBlack,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {                    },
                    icon: const Icon(Icons.bookmark),
                    label: const Text("Bookmark"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryBlack,
                      foregroundColor: AppColors.primaryWhite,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}