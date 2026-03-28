//service complete page
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
                CircleAvatar(
                  child: Text('Logo'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Emergency action
                  },
                  child: Text('Emergency'),
                ),
              ],
            ),
            SizedBox(height: 20),
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
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Username'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Location'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Problem'),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Call action
                          },
                          child: Text('Call'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Chat action
                          },
                          child: Text('Chat'),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Analysis action
                      },
                      child: Text('Analysis'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Service Complete action
                      },
                      child: Text('Service Complete'),
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
