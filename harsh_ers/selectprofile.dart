//select profile b/w user and service provider
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileSelectionScreen(),
    );
  }
}

class ProfileSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo
            CircleAvatar(
              radius: 30,
              child: Text('Logo'),
            ),
            SizedBox(height: 20),
            // Select Your Profile Text
            Text(
              'Select Your Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            // User and Service Provider Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // User Button
                GestureDetector(
                  onTap: () {
                    // Handle User selection
                  },
                  child: CircleAvatar(
                    radius: 60,
                    child: Text('User'),
                  ),
                ),
                SizedBox(width: 40),
                // Service Provider Button
                GestureDetector(
                  onTap: () {
                    // Handle Service Provider selection
                  },
                  child: CircleAvatar(
                    radius: 60,
                    child: Text('Service Provider'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
