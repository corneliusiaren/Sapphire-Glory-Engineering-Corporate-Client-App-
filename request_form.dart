import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ServiceRequestForm extends StatefulWidget {
  @override
  _ServiceRequestFormState createState() => _ServiceRequestFormState();
}

class _ServiceRequestFormState extends State<ServiceRequestForm> {
  final _formKey = GlobalKey<FormState>();
  String projectType = '';
  String description = '';

  void submitRequest() {
    FirebaseFirestore.instance.collection('requests').add({
      'projectType': projectType,
      'description': description,
      'status': 'submitted',
      'timestamp': Timestamp.now(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Request Service")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Project Type'),
                onChanged: (value) => projectType = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Description'),
                onChanged: (value) => description = value,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: submitRequest,
                child: Text("Submit Request"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
