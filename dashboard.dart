import 'package:flutter/material.dart';

class ECommerceDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce Dashboard'),
      ),
      body: Center(
        child: Text('Welcome to the E-Commerce Dashboard!'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ECommerceDashboard(),
  ));
}
