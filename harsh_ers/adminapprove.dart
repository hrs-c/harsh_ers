//admin approve or decline job!!
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ServiceRequestScreen(),
    );
  }
}

class ServiceRequestScreen extends StatefulWidget {
  @override
  _ServiceRequestScreenState createState() => _ServiceRequestScreenState();
}

class _ServiceRequestScreenState extends State<ServiceRequestScreen> {
  // Placeholder for image (replace with actual image handling)
  final String imageUrl = "https://via.placeholder.com/150";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service Request"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Header Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Service Provider"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("User"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Payment"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Service Request"),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Image Display
            Center(
              child: Image.network(
                imageUrl,
                height: 150, // Adjust as needed
                width: 150, // Adjust as needed
              ),
            ),

            SizedBox(height: 20),

            // User Details
            Text("Username: user123"), // Replace with dynamic data
            Text(
                "Location: Rajkot, Gujarat, India"), // Replace with dynamic data
            Text(
                "Description: Need a plumber to fix a leaky faucet."), // Replace with dynamic data

            SizedBox(height: 20),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Approve"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Set background color
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Decline"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Set background color
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
