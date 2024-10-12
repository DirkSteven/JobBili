import 'package:flutter/material.dart';
import 'package:million_dollar_startup/styles/colors.dart';

class ServicesIcons extends StatelessWidget {
  const ServicesIcons({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            _buildServiceItem(Icons.plumbing, "Plumbing", AppColors.primaryWhite, AppColors.primaryGrey),
            _buildServiceItem(Icons.cleaning_services, "Housekeeping", AppColors.primaryWhite, AppColors.primaryGrey),
            _buildServiceItem(Icons.construction, "Carpentry", AppColors.primaryWhite, AppColors.primaryGrey),
            _buildServiceItem(Icons.electrical_services, "Electrical", AppColors.primaryWhite, AppColors.primaryGrey),
            _buildServiceItem(Icons.more_horiz, "More", AppColors.primaryGrey, AppColors.secondaryGrey), 
          ],
        ),
      ),
    );
  }

  Widget _buildServiceItem(IconData iconData, String label, Color iconColor, Color bgColor) {
    return Column(
      mainAxisSize: MainAxisSize.min, 
      children: [
        CircleAvatar(
          radius: 25, 
          backgroundColor: bgColor, 
          child: Icon(
            iconData,
            size: 22, 
            color: iconColor, 
          ),
        ),

        const SizedBox(height: 8),

        Text(
          label,
          style: const TextStyle(
            fontSize: 10, 
            fontWeight: FontWeight.w500,
            color: AppColors.primaryFontColorBlack, 
          ),
        ),
      ],
    );
  }
}
