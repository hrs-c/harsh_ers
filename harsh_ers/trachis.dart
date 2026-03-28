//trsaction history
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Payment History'),
        ),
        body: PaymentHistory(),
      ),
    );
  }
}

class PaymentHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment History',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          PaymentCard(),
          SizedBox(height: 16),
          PaymentCard(),
          SizedBox(height: 16),
          PaymentCard(),
        ],
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Transaction id', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Total amount', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Service', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
