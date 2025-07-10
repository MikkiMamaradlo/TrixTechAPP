import 'package:flutter/material.dart';
import 'profile_screen.dart';  // Import ProfileScreen
import 'settings_screen.dart';  // Import SettingsScreen
import '../auth/order_screen.dart';

const Color kGold = Color(0xFFBFA14A);
const Color kSoftWhite = Color(0xFFFFFBEA);

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSoftWhite,
      appBar: AppBar(
        backgroundColor: kGold,
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: kGold,
              ),
              child: Text(
                'TrixTech Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person, color: kGold),
              title: const Text('Profile'),
              onTap: () {
                // Navigate to ProfileScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ProfileScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: kGold),
              title: const Text('Settings'),
              onTap: () {
                // Navigate to SettingsScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SettingsScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: kGold),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context); // Close drawer
                Navigator.popUntil(context, ModalRoute.withName('/')); // Log out and navigate to home
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: [
            _buildMenuItem(Icons.event, 'Events'),
            _buildMenuItem(Icons.photo, 'Gallery'),
            _buildMenuItemWithNav(context, Icons.shopping_cart, 'Orders'),
            _buildMenuItem(Icons.analytics, 'Reports'),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: kGold, width: 1),
      ),
      child: InkWell(
        onTap: () {
          // TODO: Add onTap logic
        },
        borderRadius: BorderRadius.circular(12),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 40, color: kGold),
              const SizedBox(height: 10),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  color: kGold,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItemWithNav(BuildContext context, IconData icon, String label) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: kGold, width: 1),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const OrderScreen()), // Ensure OrderScreen is correctly imported
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 40, color: kGold),
              const SizedBox(height: 10),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  color: kGold,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
