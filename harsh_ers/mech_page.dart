//mechanic's service select page
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Emergency Mechanics'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildMechanicCard('Mechanic 1', 'Description 1'),
              _buildMechanicCard('Mechanic 2', 'Description 2'),
              ElevatedButton(
                onPressed: () {
                  // Handle location button press
                },
                child: Text('PAYMENT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildMechanicCard(String name, String description) {
  return Card(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            description,
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          Image.asset(
            'assets/mechanic_image.png', // Replace with actual image path
            width: 50.0,
            height: 50.0,
          ),
        ],
      ),
    ),
  );
}
