import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: const TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 93, 14, 65),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // _buildProfilePicture(context),
              // SizedBox(height: 16),
              // _buildUserInfo(context),
              SizedBox(height: 16),
              _buildSettings(context),
              SizedBox(height: 16),
              _buildSupportAndFeedback(context),
              SizedBox(height: 16),
              _buildLogoutButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfilePicture(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage:
                AssetImage('assets/images/profile_placeholder.png'),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                // Handle profile picture change
              },
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(Icons.edit, size: 15, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter your name',
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Email',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter your email',
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Phone',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter your phone number',
          ),
        ),
      ],
    );
  }

  Widget _buildSettings(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Settings',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        ListTile(
          leading: Icon(Icons.lock),
          title: Text('Change Password'),
          onTap: () {
            // Handle change password
          },
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Manage Notifications'),
          onTap: () {
            // Handle manage notifications
          },
        ),
        ListTile(
          leading: Icon(Icons.privacy_tip),
          title: Text('Privacy Settings'),
          onTap: () {
            // Handle privacy settings
          },
        ),
      ],
    );
  }

  Widget _buildSupportAndFeedback(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Support and Feedback',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        ListTile(
          leading: Icon(Icons.support),
          title: Text('Support'),
          onTap: () {
            // Handle support
          },
        ),
        ListTile(
          leading: Icon(Icons.feedback),
          title: Text('Feedback'),
          onTap: () {
            // Handle feedback
          },
        ),
        ListTile(
          leading: Icon(Icons.description),
          title: Text('Terms of Service'),
          onTap: () {
            // Handle terms of service
          },
        ),
        ListTile(
          leading: Icon(Icons.privacy_tip),
          title: Text('Privacy Policy'),
          onTap: () {
            // Handle privacy policy
          },
        ),
      ],
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Handle logout
      },
      child: Text(
        'Logout',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 255, 32, 78),
        ),
      ),
    );
  }
}
