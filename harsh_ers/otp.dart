//service provider OTP page
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OTPScreen(),
    );
  }
}

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Profile icon action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  child: Text('Logo'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Emergency button action
                  },
                  child: Text('Emergency'),
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Enter OTP',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _otpTextField(context),
                _otpTextField(context),
                _otpTextField(context),
                _otpTextField(context),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Submit button action
              },
              child: Text('Submit'),
            ),
            TextButton(
              onPressed: () {
                // Resend OTP action
              },
              child: Text('Resend OTP'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _otpTextField(BuildContext context) {
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
