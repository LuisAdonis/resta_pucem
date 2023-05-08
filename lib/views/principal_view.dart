import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resta_pucem/views/widgets/custom_bottom_navigation.dart';
import 'package:resta_pucem/views/widgets/custom_drawer.dart';

class PrincipalView extends StatelessWidget {
  const PrincipalView({super.key, this.title});
  final String? title;
  static const routeName = '/principal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rutas"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
          )
        ],
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const CustomNavigation(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            JelloIn(
              child: const Image(
                image: AssetImage("assets/favicon.png"),
                width: 200,
              ),
            ),
            const Text("Coming soon"),
          ],
        ),
      ),
    );
  }
}
