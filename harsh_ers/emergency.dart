//emergency contact
import 'package:flutter/material.dart';

void main() {
  runApp(EmergencyContactApp());
}

class EmergencyContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Emergency Contact'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EmergencyButton(title: 'Ambulance', number: '108'),
              EmergencyButton(title: 'Police', number: '100'),
              EmergencyButton(title: 'Fire Brigade', number: '993'),
              EmergencyButton(title: 'Woman Helpline', number: '181'),
            ],
          ),
        ),
      ),
    );
  }
}

class EmergencyButton extends StatelessWidget {
  final String title;
  final String number;

  EmergencyButton({required this.title, required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton(
        onPressed: () {
          // Add functionality to make a call here
        },
        child: Text('$title: $number'),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
        ),
      ),
    );
  }
}
