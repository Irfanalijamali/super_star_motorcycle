import 'package:flutter/material.dart';

class MemonCompaniesHorizontalScroll extends StatelessWidget {
  const MemonCompaniesHorizontalScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Main Title
          const Text(
            'Memon Motors Pvt. Ltd.-',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'Inter',
            ),
          ),
          
          const SizedBox(height: 8),
          
          // Subtitle
          const Text(
            'Group of Companies',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
              fontFamily: 'Inter',
            ),
          ),
          
          const SizedBox(height: 30),
          
          // Horizontal Scrollable Circle Avatars
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 10),
                _buildCircleAvatarItem('NEXcell', 'assets/nexcell_logo.png'),
                const SizedBox(width: 20),
                _buildCircleAvatarItem('MAK', 'assets/mak_logo.png'),
                const SizedBox(width: 20),
                _buildCircleAvatarItem('FREE', 'assets/free_logo.png'),
                const SizedBox(width: 20),
                _buildCircleAvatarItem('SHIPPING', 'assets/shipping_logo.png'),
                const SizedBox(width: 20),
                _buildCircleAvatarItem('MONEY BACK', 'assets/moneyback_logo.png'),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircleAvatarItem(String title, String imagePath) {
    return Column(
      children: [
        // Circle Avatar
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xFF0056A3),
              width: 2,
            ),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.asset(
                imagePath,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.business,
                      color: Colors.white,
                      size: 30,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        
        const SizedBox(height: 8),
        
        // Company Name
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontFamily: 'Inter',
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}