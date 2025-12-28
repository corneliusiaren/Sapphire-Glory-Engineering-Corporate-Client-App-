import 'package:flutter/material.dart';

class SustainabilityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sustainability Tools")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Basic Carbon Footprint Estimator",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text("Concrete Structure: ★★★☆☆"),
            Text("Steel Structure: ★★★★☆"),
            Text("Optimized Hybrid: ★★★★★"),
          ],
        ),
      ),
    );
  }
}
