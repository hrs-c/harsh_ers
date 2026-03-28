//service accept or reject page
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EmergencyResponseScreen(),
    );
  }
}

class EmergencyResponseScreen extends StatelessWidget {
  const EmergencyResponseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Response'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigate to user profile
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Logo',
                  style: TextStyle(fontSize: 24),
                ),
                IconButton(
                  icon: Icon(Icons.warning),
                  onPressed: () {
                    // Emergency action
                  },
                ),
              ],
            ),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      color: Colors.grey[300],
                      child: Center(
                        child: Text('Image Placeholder'),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Description'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Username'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Location'),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Accept action
                          },
                          child: Text('Accept'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Reject action
                          },
                          child: Text('Reject'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
