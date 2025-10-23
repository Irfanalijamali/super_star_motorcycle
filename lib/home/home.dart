import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superstar/Read_more/read_more.dart';
import 'package:superstar/screen_two/screen_two.dart';

class SuperStarHomePage extends StatefulWidget {
  const SuperStarHomePage({super.key});

  @override
  State<SuperStarHomePage> createState() => _SuperStarHomePageState();
}

class _SuperStarHomePageState extends State<SuperStarHomePage> {
  bool isProductsExpanded = false; // 🔹 Expansion control

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        // 🔹 Drawer with Expandable Menu
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // 🔹 Drawer Header
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // App Name
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Super Star",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Motorcycle",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),

                    // Close Button
                    IconButton(
                      icon: const Icon(CupertinoIcons.clear,size: 28,),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),

              // 🔹 Home
              ListTile(
                title: const Text("Home"),
                onTap: () {},
              ),

              // 🔹 Our Products (Expandable)
              ListTile(
                title: const Text("Our Products"),
                trailing: Icon(
                  isProductsExpanded ? Icons.remove : Icons.add,
                ),
                onTap: () {
                  setState(() {
                    isProductsExpanded = !isProductsExpanded;
                  });
                },
              ),

              // 🔹 Expandable Sub Items
              if (isProductsExpanded)
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Eves",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Heavy Bikes",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Non-Electric Bikes",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Rakshaw & Loader",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              // 🔹 Other Menu Items
              ListTile(
                title: const Text("Contact Us"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("About Us"),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Icon(CupertinoIcons.person),
                title: const Text("Log in"),
                onTap: () {},
              ),
            ],
          ),
        ),

        // 🔹 Body
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Top Blue Bar
              Container(
                width: double.infinity,
                color: const Color(0xFF0056A3),
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Center(
                  child: Text(
                    'Home Delivery Available All Over Pakistan',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),

              // 🔹 Logo & Navigation Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder: (context) => IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  ),

                  // ✅ Logo in center
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        'assets/logo.png',
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  // ✅ Action icons on right
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(CupertinoIcons.search),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(CupertinoIcons.cart),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // 🔹 WHO WE ARE Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/firstpic.jpg',
                      width: double.infinity,
                      fit: BoxFit.cover,
                      height: 180,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'WHO WE ARE',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0056A3),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Memon Motors Pvt. Ltd. was established in 1992 and became a well-recognized name for motorcycles and auto-rickshaws. '
                      'With decades of dedication and innovation, we have grown into a trusted auto engineering company, '
                      'delivering reliable and accessible transport solutions across the region.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.6,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {
                      // In your main app or navigation
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => AboutUsPage()),
);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0056A3),
                    ),
                    child: const Text('Read More',style: TextStyle(color: Colors.white),),
                  ),

                  Image.asset(
                    'assets/logo.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ],
              ),

              ProfileCard(),
              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
