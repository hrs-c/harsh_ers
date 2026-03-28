//feedback page of service provider
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FeedbackPage(),
    );
  }
}

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Page'),
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
                    // Emergency call action
                  },
                  child: Text('Emergency Call'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Rate our service',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star_border, size: 30),
                Icon(Icons.star_border, size: 30),
                Icon(Icons.star_border, size: 30),
                Icon(Icons.star_border, size: 30),
                Icon(Icons.star_border, size: 30),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text('Enter OTP'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _otpTextField(),
                _otpTextField(),
                _otpTextField(),
                _otpTextField(),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Submit action
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _otpTextField() {
    return SizedBox(
      width: 50,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
      ),
    );
  }
}
