import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Map<String, dynamic>> _profiles = [
    {
      'image': 'assets/Saleem_Memon.webp',
      'name': 'Muhammad Saleem Memon',
      'designation': 'Chairman, Memon Motor Pvt Ltd',
      'quote': '"Innovation drives progress, and sustainability shapes the future. '
          'At Memon Motor Pvt Ltd, we are committed to delivering high-tech, '
          'affordable, and eco-friendly mobility solutions. With a team of '
          'industry experts and a vision for excellence, we continue to push '
          'the boundaries of engineering, ensuring superior performance and reliability."',
    },
    {
      'image': 'assets/Usman_Saleem.webp',
      'name': 'Usman Saleem',
      'designation': 'CEO, Memon Motor Pvt Ltd',
      'quote': '"At Memon Motor Pvt Ltd, we are driving the future with innovation, expertise, and sustainability. '
          'With a newly formed management team bringing experience from leading automotive companies, '
          'we are set to redefine mobility solutions. Our mission is clear—to lead the shift towards '
          'high-tech, cost-effective, and eco-friendly transportation."',
    },
    {
      'image': 'assets/Murtaza_Saleem.webp', // Changed to .png as per your file
      'name': 'Murtaza Saleem',
      'designation': 'Chief Operating Officer, Memon Motor Pvt Ltd',
      'quote': '"Our priority is cutting-edge technology, affordability, and customer satisfaction. '
          'From enhancing the Superstar engine to introducing EV motorcycles and scooties, '
          'we continuously strive for excellence and reliability. With an expanding global footprint '
          'and a trusted dealer network, we are shaping the future of sustainable mobility."',
    },
  ];

  void _nextProfile() {
    if (_currentIndex < _profiles.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousProfile() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentIndex = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF001F3F),
              Color(0xFF003366),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // PageView for Horizontal Swiping
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: PageView.builder(
                controller: _pageController,
                itemCount: _profiles.length,
                itemBuilder: (context, index) {
                  final profile = _profiles[index];
                  return SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: _buildProfileContent(profile),
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            // Navigation Controls
            _buildNavigationControls(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileContent(Map<String, dynamic> profile) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Profile Image with Error Handling
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: _buildProfileImage(profile['image']),
        ),
        const SizedBox(height: 16),

        // Name
        Text(
          profile['name'],
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 4),

        // Designation
        Text(
          profile['designation'],
          style: const TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 16),

        // Quote
        Text(
          profile['quote'],
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 14,
            height: 1.4,
          ),
          textAlign: TextAlign.center,
        ),

        
      ],
    );
  }

  Widget _buildProfileImage(String imagePath) {
    return Image.asset(
      imagePath,
      width: 200,
      height: 200,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        // If image not found, show placeholder
        return Container(
          width: 180,
          height: 110,
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, color: Colors.white54, size: 50),
              SizedBox(height: 8),
              Text(
                'Image Not Found',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

 

  Widget _buildInfoSection({required String title, required String content}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 14,
            height: 1.4,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }

  Widget _buildNavigationControls() {
    return Column(
      children: [
        // Profile Indicator Dots
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            _profiles.length,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: _currentIndex == index 
                    ? Colors.lightBlueAccent 
                    : Colors.white54,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),

        const SizedBox(height: 12),

        // Arrows and Counter
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Left Arrow
            IconButton(
              onPressed: _currentIndex > 0 ? _previousProfile : null,
              icon: Icon(
                Icons.arrow_back_ios, 
                color: _currentIndex > 0 ? Colors.white54 : Colors.white24,
                size: 18,
              ),
            ),
            
            const SizedBox(width: 20),
            
            // Profile Counter
            Text(
              '${_currentIndex + 1} of ${_profiles.length}',
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            
            const SizedBox(width: 20),
            
            // Right Arrow
            IconButton(
              onPressed: _currentIndex < _profiles.length - 1 ? _nextProfile : null,
              icon: Icon(
                Icons.arrow_forward_ios, 
                color: _currentIndex < _profiles.length - 1 ? Colors.white54 : Colors.white24,
                size: 18,
              ),
            ),
          ],
        ),
      ],
    );
  }
}