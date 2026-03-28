//service provider verification form
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VerificationForm(),
    );
  }
}

class VerificationForm extends StatefulWidget {
  const VerificationForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VerificationFormState createState() => _VerificationFormState();
}

class _VerificationFormState extends State<VerificationForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verification Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'First Name'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Last Name'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Address'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Mobile No'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Service Description'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Service Charge'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Fixed Charge'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process data
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
