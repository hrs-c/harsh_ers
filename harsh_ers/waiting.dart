//waiting page for payment
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
          title: Text('Emergency'),
        ),
        body: Center(
          child: Container(
            width: 200, // Adjust width as needed
            height: 200, // Adjust height as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(),
            ),
            child: Center(
              child: Text(
                'Waiting......',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
