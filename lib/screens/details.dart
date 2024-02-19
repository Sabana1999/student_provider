import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
   DetailsPage({
    super.key,
    required this.id});

  int id;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("student details"),
      ),
    );
  }
}