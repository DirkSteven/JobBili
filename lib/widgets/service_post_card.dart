import 'package:flutter/material.dart';
import 'package:million_dollar_startup/pages/service_post_details_page.dart';
import 'package:million_dollar_startup/styles/colors.dart';
import '../models/service_post.dart';

class ServicePostCard extends StatefulWidget {
  final ServicePost servicePostData;

  const ServicePostCard({required this.servicePostData, super.key});

  @override
  State<ServicePostCard> createState() => _ServicePostCardState();
}

class _ServicePostCardState extends State<ServicePostCard> {

  Widget buildSubDetails(IconData icon, String detail){
    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Icon(icon, size: 16, color: AppColors.secondaryGrey),
          const SizedBox(width: 4),
          Text(
            detail,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.secondaryFontColorGrey,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ServicePostDetailsPage(servicePost: widget.servicePostData),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), 
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        elevation: 5, 
        color: Colors.white, 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
       
              Text(
                widget.servicePostData.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryFontColorYellow,
                ),
              ),
              const SizedBox(height: 8),
      
              Text(
                widget.servicePostData.userDisplayName,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondaryFontColorGrey,
                ),
              ),
              const SizedBox(height: 8),
      
              Text(
                widget.servicePostData.content,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.primaryFontColorBlack,
                  height: 1.5, 
                ),
              ),
              const SizedBox(height: 12),

              buildSubDetails(Icons.category, 'Category: ${widget.servicePostData.category}'),
              buildSubDetails(Icons.location_on, 'Location: ${widget.servicePostData.location}'),
              const SizedBox(height: 8),
      
              Text(
                'Posted on: ${widget.servicePostData.dateTime}',
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.primaryFontColorGrey,
                  fontStyle: FontStyle.italic,
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
