//select payment page
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _selectedPaymentOption = 'UPI';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Emergency Payment'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildAmountField(),
              _buildPaymentOptions(),
              ElevatedButton(
                onPressed: () {
                  // Handle payment button press
                  _makePayment();
                },
                child: Text('PAY'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAmountField() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'AMOUNT',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildPaymentOptions() {
    return Column(
      children: [
        _buildRadioListTile('UPI'),
        _buildRadioListTile('CARD'),
        _buildRadioListTile('NET BANKING'),
        _buildRadioListTile('WALLET'),
      ],
    );
  }

  Widget _buildRadioListTile(String value) {
    return RadioListTile<String>(
      title: Text(value),
      value: value,
      groupValue: _selectedPaymentOption,
      onChanged: (value) {
        setState(() {
          _selectedPaymentOption = value!;
        });
      },
    );
  }

  void _makePayment() {
    // TODO: Implement payment logic here
    print('Selected payment option: $_selectedPaymentOption');
  }
}
