import 'package:flutter/material.dart';

class AcercaDeView extends StatelessWidget {
  const AcercaDeView({super.key});
  static const routeName = 'acercade';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Acerca de"),
        centerTitle: true,
      ),
    );
  }
}
