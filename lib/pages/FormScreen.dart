import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  final Function(String, String, int) onSubmit;

  FormScreen(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    String name = '';
    String address = '';
    int age = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Details'), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                onChanged: (value) => name = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Address'),
                onChanged: (value) => address = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
                onChanged: (value) => age = int.tryParse(value) ?? 0,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  onSubmit(name, address, age);
                  Navigator.pop(context);
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
