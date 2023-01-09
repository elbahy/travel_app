import 'package:flutter/material.dart';

class CategoryTripsScreen extends StatelessWidget {
  final String id;
  final String title;
  CategoryTripsScreen(this.id, this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Text("قائمة الرحلات"),
    );
  }
}
