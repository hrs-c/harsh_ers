//payment history admin
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaymentHistoryScreen(),
    );
  }
}

class PaymentHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment History'),
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

            // Payment History Title
            Text(
              'Payment History',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // Payment History Table (using ListView for scrollability)
            Expanded(
              child: ListView(
                children: [
                  PaymentHistoryRow(
                    requestNo: '12345',
                    amount: '50.00',
                    transactionId: 'TX123ABC',
                  ),
                  PaymentHistoryRow(
                    requestNo: '67890',
                    amount: '25.50',
                    transactionId: 'TX456DEF',
                  ),
                  // Add more PaymentHistoryRow widgets as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentHistoryRow extends StatelessWidget {
  final String requestNo;
  final String amount;
  final String transactionId;

  const PaymentHistoryRow({
    required this.requestNo,
    required this.amount,
    required this.transactionId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(child: Text(requestNo)),
          Expanded(child: Text(amount)),
          Expanded(child: Text(transactionId)),
        ],
      ),
    );
  }
}
