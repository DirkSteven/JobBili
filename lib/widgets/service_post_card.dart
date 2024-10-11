import 'package:flutter/material.dart';
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
        borderRadius: BorderRadius.circular(15), // Rounded corners
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      elevation: 5, // Adds shadow
      color: Colors.white, // Background color for the card
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Display Name with Styling
            Text(
              widget.servicePostData.userDisplayName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87, // Slightly softer black
              ),
            ),
            const SizedBox(height: 8),

            // Service Title
            Text(
              widget.servicePostData.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            const SizedBox(height: 8),

            // Service Description
            Text(
              widget.servicePostData.content,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black87,
                height: 1.5, // Increases line height for readability
              ),
            ),
            const SizedBox(height: 12),

            // Category and Location
            Row(
              children: [
                Icon(Icons.category, size: 16, color: Colors.grey[700]),
                const SizedBox(width: 4),
                Text(
                  'Category: ${widget.servicePostData.category}',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),

            Row(
              children: [
                Icon(Icons.location_on, size: 16, color: Colors.grey[700]),
                const SizedBox(width: 4),
                Text(
                  'Location: ${widget.servicePostData.location}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Date of Posting
            Text(
              'Posted on: ${widget.servicePostData.dateTime}',
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 8),

            // Status (Open/Closed)
            Text(
              widget.servicePostData.isOpen ? 'Status: Open' : 'Status: Closed',
              style: TextStyle(
                fontSize: 14,
                color: widget.servicePostData.isOpen ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
