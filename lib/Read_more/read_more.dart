import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            _buildHeaderSection(),
            
            // Breadcrumb
            _buildBreadcrumb(),
            
            // Main Content
            _buildMainContent(),
            
            // Super Star Motor Cycle Section
            _buildSuperStarSection(),
            
            // Additional Info Section
            _buildAdditionalInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF001F3F),
            Color(0xFF003366),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'About Us',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Leading the Future of Mobility',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
              fontFamily: 'Inter',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      color: Colors.grey[50],
      child: Row(
        children: [
          Text(
            'Home',
            style: TextStyle(
              color: Color(0xFF003366),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 8),
          Icon(Icons.chevron_right, size: 16, color: Colors.grey),
          SizedBox(width: 8),
          Text(
            'About Us',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ABOUT THE COMPANY',
            style: TextStyle(
              color: Color(0xFF001F3F),
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
            ),
          ),
          SizedBox(height: 24),
          
          // Content with icon highlights
          _buildContentWithIcons(),
          
          SizedBox(height: 32),
          
          // Timeline Section
          _buildTimelineSection(),
        ],
      ),
    );
  }

  Widget _buildContentWithIcons() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.business, color: Color(0xFF003366), size: 24),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                'The most renowned manufacturing company, Memon Motor Pvt Ltd was established in 1992 as an auto-rickshaw manufacturer.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.grey[800],
                  fontFamily: 'Inter',
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.two_wheeler, color: Color(0xFF003366), size: 24),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                'The launch of motorcycles also emerged in 2002. Memon Motor Pvt Ltd has widened the company in the line of auto engineering.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.grey[800],
                  fontFamily: 'Inter',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTimelineSection() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Journey',
            style: TextStyle(
              color: Color(0xFF001F3F),
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
            ),
          ),
          SizedBox(height: 20),
          
          _buildTimelineItem(
            year: '1992',
            title: 'Company Establishment',
            description: 'Started as auto-rickshaw manufacturer',
            icon: Icons.flag,
          ),
          _buildTimelineItem(
            year: '2002',
            title: 'Motorcycle Launch',
            description: 'Entered motorcycle manufacturing',
            icon: Icons.two_wheeler,
          ),
          _buildTimelineItem(
            year: 'Present',
            title: 'Auto Engineering Excellence',
            description: 'Expanding in auto engineering sector',
            icon: Icons.engineering,
          ),
        ],
      ),
    );
  }

  Widget _buildTimelineItem({
    required String year,
    required String title,
    required String description,
    required IconData icon,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFF003366),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 24),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  year,
                  style: TextStyle(
                    color: Color(0xFF001F3F),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                    fontFamily: 'Inter',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuperStarSection() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Super Star Title
          Text(
            'SUPER STAR MOTOR CYCLE',
            style: TextStyle(
              color: Color(0xFF001F3F),
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
              letterSpacing: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            'FOCUS ON MISSION AND VALUES',
            style: TextStyle(
              color: Color(0xFF003366),
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter',
              letterSpacing: 1.2,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),

          // Mission Vision Values Cards
          _buildMissionVisionValues(),
          SizedBox(height: 40),

          // Our Vision Section
          _buildOurVisionSection(),
          SizedBox(height: 30),

          // Shop Now Button
          _buildShopNowButton(),
        ],
      ),
    );
  }

  Widget _buildMissionVisionValues() {
    return Row(
      children: [
        Expanded(
          child: _buildMVVCard(
            title: 'MISSION',
            icon: Icons.flag,
            color: Color(0xFF001F3F),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: _buildMVVCard(
            title: 'VISION',
            icon: Icons.visibility,
            color: Color(0xFF003366),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: _buildMVVCard(
            title: 'VALUES',
            icon: Icons.star,
            color: Color(0xFF001F3F),
          ),
        ),
      ],
    );
  }

  Widget _buildMVVCard({
    required String title,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 32),
          SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOurVisionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'OUR VISION',
          style: TextStyle(
            color: Color(0xFF001F3F),
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
          ),
        ),
        SizedBox(height: 20),

        // Vision Points
        _buildVisionPoint(
          icon: Icons.thumb_up,
          text: 'We always keep our client\'s satisfaction as our priority and devise all the strategies considering their demands. Our goal is to provide high-tech low-cost products to clients and the local market.',
        ),
        SizedBox(height: 16),
        _buildVisionPoint(
          icon: Icons.eco,
          text: 'To minimize ozone pollution, Memon motor Pvt Ltd is introducing an environment-friendly and pollution-free four-stroke Auto CNG Rickshaw.',
        ),
        SizedBox(height: 16),
        _buildVisionPoint(
          icon: Icons.electric_rickshaw,
          text: 'As superstar is entering new era and to save earth from harmful pollutants we are introducing iconic EV motorcycles.',
        ),
      ],
    );
  }

  Widget _buildVisionPoint({
    required IconData icon,
    required String text,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xFF003366),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white, size: 20),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Colors.grey[800],
              fontFamily: 'Inter',
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildShopNowButton() {
    return Container(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          // Add navigation to shop page
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF001F3F),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Shop Now',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Inter',
              ),
            ),
            SizedBox(width: 8),
            Icon(Icons.shopping_cart, size: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildAdditionalInfo() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      color: Color(0xFF001F3F),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Why Choose Memon Motor?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
            ),
          ),
          SizedBox(height: 20),
          
          Row(
            children: [
              Expanded(
                child: _buildFeatureItem(
                  icon: Icons.engineering,
                  title: 'Expert Engineering',
                  description: '30+ years of automotive expertise',
                ),
              ),
              Expanded(
                child: _buildFeatureItem(
                  icon: Icons.eco,
                  title: 'Sustainable',
                  description: 'Eco-friendly mobility solutions',
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildFeatureItem(
                  icon: Icons.search,
                  title: 'Innovation',
                  description: 'Cutting-edge technology',
                ),
              ),
              Expanded(
                child: _buildFeatureItem(
                  icon: Icons.groups,
                  title: 'Trusted',
                  description: 'Reliable dealer network',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.lightBlueAccent, size: 32),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 12,
              fontFamily: 'Inter',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}