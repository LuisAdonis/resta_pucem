import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const routeName = '/';
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      lowerBound: 0.2,
      duration: const Duration(seconds: 3),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
    controller.forward().then((value) {
      debugPrint("/principal");
      context.go("/principal");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Image(
              image: AssetImage(
                "assets/favicon.png",
              ),
              width: 200,
            ),
            const Spacer(),
            CircularProgressIndicator(
              // backgroundColor: Colors.white,}
              value: controller.value,
            ),
            const SizedBox(height: 20),
            const Text("Cargando...", style: TextStyle()),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
