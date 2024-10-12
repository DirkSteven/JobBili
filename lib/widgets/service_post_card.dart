import 'package:flutter/material.dart';
import 'package:million_dollar_startup/styles/colors.dart';
import '../models/service_post.dart';

class ServicePostCard extends StatefulWidget {
  final ServicePost servicePostData;

  const ServicePostCard({required this.servicePostData, super.key});

  @override
  State<ServicePostCard> createState() => _ServicePostCardState();
}

class _ServicePostCardState extends State<ServicePostCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
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
              widget.servicePostData.userDisplayName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryFontColorBlack,
              ),
            ),
            const SizedBox(height: 8),

            Text(
              widget.servicePostData.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryYellow,
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

            Row(
              children: [
                Icon(Icons.category, size: 16, color: AppColors.secondaryGrey),
                const SizedBox(width: 4),
                Text(
                  'Category: ${widget.servicePostData.category}',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryFontColorGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),

            Row(
              children: [
                Icon(Icons.location_on, size: 16, color: AppColors.secondaryGrey),
                const SizedBox(width: 4),
                Text(
                  'Location: ${widget.servicePostData.location}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.secondaryFontColorGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            Text(
              'Posted on: ${widget.servicePostData.dateTime}',
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.primaryFontColorGrey,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 8),

            Text(
              widget.servicePostData.isOpen ? 'Status: Open' : 'Status: Closed',
              style: TextStyle(
                fontSize: 14,
                color: widget.servicePostData.isOpen ? AppColors.primaryFontColorGreen : AppColors.primaryFontColorRed,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
