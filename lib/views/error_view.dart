import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text("Error"),
          TextButton(
            onPressed: () {},
            child: const Text("Regresar"),
          )
        ],
      ),
    );
  }
}
