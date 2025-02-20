import 'package:flutter/material.dart';
import 'package:shoppix/constants.dart';


class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor, // Background color for the screen
      appBar: AppBar(
        backgroundColor: kprimaryColor, // AppBar matches the primary color
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top Section with Circle Avatar and Gradient
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [kprimaryColor.withOpacity(0.9), kprimaryColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 60,
                        color: kprimaryColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Muhammad Awais',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'awais@example.com',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // User Stats Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.white,
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        children: [
                          Text(
                            'Orders',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kprimaryColor,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '12',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: kprimaryColor.withOpacity(0.3),
                        thickness: 1,
                      ),
                      const Column(
                        children: [
                          Text(
                            'Wishlist',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kprimaryColor,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '8',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: kprimaryColor.withOpacity(0.3),
                        thickness: 1,
                      ),
                      const Column(
                        children: [
                          Text(
                            'Coupons',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kprimaryColor,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '5',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Options List with Primary Color Highlights
            ListTile(
              leading: const Icon(Icons.shopping_bag, color: kprimaryColor),
              title: const Text(
                'My Orders',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: kprimaryColor, size: 18),
              onTap: () {
                // Navigate to Orders
              },
            ),
            Divider(color: kprimaryColor.withOpacity(0.3)),
            ListTile(
              leading: const Icon(Icons.favorite, color: kprimaryColor),
              title: const Text(
                'Wishlist',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: kprimaryColor, size: 18),
              onTap: () {
                // Navigate to Wishlist
              },
            ),
            Divider(color: kprimaryColor.withOpacity(0.3)),
            ListTile(
              leading: const Icon(Icons.payment, color: kprimaryColor),
              title: const Text(
                'Payment Methods',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: kprimaryColor, size: 18),
              onTap: () {
                // Navigate to Payment Methods
              },
            ),
            Divider(color: kprimaryColor.withOpacity(0.3)),
            ListTile(
              leading: const Icon(Icons.settings, color: kprimaryColor),
              title: const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: kprimaryColor, size: 18),
              onTap: () {
                // Navigate to Settings
              },
            ),
            Divider(color: kprimaryColor.withOpacity(0.3)),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.redAccent),
              title: const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.redAccent, size: 18),
              onTap: () {
                // Logout functionality
              },
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
