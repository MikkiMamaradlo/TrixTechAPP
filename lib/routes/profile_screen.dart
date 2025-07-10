import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Semantics(
                label: 'Profile picture of John Doe',
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: const NetworkImage('https://example.com/avatar.jpg'),
                  backgroundColor: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                semanticsLabel: 'Full name: John Doe',
              ),
              const SizedBox(height: 8),
              const Text(
                'johndoe@example.com',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
                semanticsLabel: 'Email: johndoe@example.com',
              ),
              const SizedBox(height: 8),
              const Text(
                'San Francisco, CA',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
                semanticsLabel: 'Location: San Francisco, California',
              ),
              const SizedBox(height: 32),
              Semantics(
                button: true,
                label: 'Edit Profile',
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(48),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    // Edit profile action
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text(
                    'Edit Profile',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
