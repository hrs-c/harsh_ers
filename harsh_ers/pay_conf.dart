//payment confirm
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
          title: Text('Payment Confirmed'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildConfirmation(),
              SizedBox(height: 20),
              _buildMechanicInfo(),
              SizedBox(height: 20),
              _buildActionButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildConfirmation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'PAYMENT CONFIRM',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        Icon(Icons.check_circle, color: Colors.green, size: 30),
      ],
    );
  }

  Widget _buildMechanicInfo() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(),
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/mechanic_image.png', // Replace with actual image path
            width: 50.0,
            height: 50.0,
          ),
          SizedBox(height: 10),
          Text('Name'),
          Text('Description'),
          Text('Location'),
          Text('Price'),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(onPressed: () {}, child: Text('Home')),
        ElevatedButton(onPressed: () {}, child: Text('Call')),
        ElevatedButton(onPressed: () {}, child: Text('Chat')),
      ],
    );
  }
}
