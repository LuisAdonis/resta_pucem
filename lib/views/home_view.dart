import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
      ),
      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}
