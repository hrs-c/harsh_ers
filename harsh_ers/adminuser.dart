//users history (admin)
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

            // Service Provider Requests
            Expanded(
              child: ListView(
                children: [
                  ServiceProviderRequestItem(
                    requestNo: '12345',
                    serviceProviderName: 'Provider A',
                    username: 'User X',
                    status: 'Pending',
                  ),
                  ServiceProviderRequestItem(
                    requestNo: '67890',
                    serviceProviderName: 'Provider B',
                    username: 'User Y',
                    status: 'Completed',
                  ),
                  // Add more ServiceProviderRequestItem widgets as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceProviderRequestItem extends StatelessWidget {
  final String requestNo;
  final String serviceProviderName;
  final String username;
  final String status;

  const ServiceProviderRequestItem({
    required this.requestNo,
    required this.serviceProviderName,
    required this.username,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Request No: $requestNo',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Service Provider Name: $serviceProviderName'),
            Text('Username: $username'),
            Text('Status: $status'),
          ],
        ),
      ),
    );
  }
}
