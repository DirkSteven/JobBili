import 'package:flutter/material.dart';

class ServicesIcons extends StatelessWidget {
  const ServicesIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            _buildServiceItem(Icons.plumbing, "Plumbing"),
            _buildServiceItem(Icons.cleaning_services, "Housekeeping"),
            _buildServiceItem(Icons.construction, "Carpentry"),
            _buildServiceItem(Icons.electrical_services, "Electrical"),
            _buildServiceItem(Icons.more_horiz, "More"), 
          ],
        ),
      ),
    );
  }

  Widget _buildServiceItem(IconData iconData, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min, 
      children: [
        CircleAvatar(
          radius: 28, 
          backgroundColor: Colors.grey[900], 
          child: Icon(
            iconData,
            size: 28, 
            color: Colors.white, 
          ),
        ),
        SizedBox(height: 8), 
        Text(
          label,
          style: TextStyle(
            fontSize: 10, 
            fontWeight: FontWeight.w500,
            color: Colors.black87, 
          ),
        ),
      ],
    );
  }
}
