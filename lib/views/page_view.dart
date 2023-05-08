import 'package:flutter/material.dart';

class PagesView extends StatefulWidget {
  const PagesView({super.key});

  @override
  State<PagesView> createState() => _PagesViewState();
}

class _PagesViewState extends State<PagesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [],
        title: const Text("Page 1"),
      ),
      drawer: const Drawer(),
      body: Container(),
    );
  }
}
