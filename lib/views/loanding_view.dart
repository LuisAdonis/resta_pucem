import 'package:flutter/material.dart';

class LoandingView extends StatelessWidget {
  const LoandingView({super.key, this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/home");
            },
            child: const Text("Home"),
          ),
          TextButton(
            onPressed: () {
              Navigator.restorablePushNamed(context, "/page1");
            },
            child: const Text("Page"),
          ),
        ],
      ),
    );
  }
}
