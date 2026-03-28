//service provider request history
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ServiceProviderRequestScreen(),
    );
  }
}

class ServiceProviderRequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Provider Request'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo (replace with your actual logo)
            Center(
              child: Container(
                width: 100,
                height: 50,
                color: Colors.grey, // Placeholder for logo
                child: Center(child: Text('Logo')),
              ),
            ),
            SizedBox(height: 20),

            // Navigation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {}, child: Text('Service Provider')),
                ElevatedButton(onPressed: () {}, child: Text('User')),
                ElevatedButton(onPressed: () {}, child: Text('Payment')),
                ElevatedButton(
                    onPressed: () {}, child: Text('Service Request')),
              ],
            ),
            SizedBox(height: 20),

            // Service Provider Requests Title
            Text(
              'Service Provider request',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // List of Service Providers
            Expanded(
              // Use Expanded to fill available space
              child: ListView(
                children: [
                  ServiceProviderItem(
                      name: 'Service Provider 1', location: 'Location 1'),
                  ServiceProviderItem(
                      name: 'Service Provider 2', location: 'Location 2'),
                  ServiceProviderItem(
                      name: 'Service Provider 3', location: 'Location 3'),
                  // Add more ServiceProviderItem widgets as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceProviderItem extends StatelessWidget {
  final String name;
  final String location;

  const ServiceProviderItem({required this.name, required this.location});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Use Card for a visually distinct item
      child: ListTile(
        leading: CircleAvatar(
          // Use CircleAvatar for the icon
          child: Icon(Icons.person),
        ),
        title: Text(name),
        subtitle: Text(location),
      ),
    );
  }
}
