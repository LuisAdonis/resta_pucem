import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:resta_pucem/router/confi_router.dart';
import 'package:resta_pucem/utils/cons.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Resta PUCEM",
      theme: ThemeData(
        primarySwatch: createMaterialColor(principal),
      ),
      routerConfig: configRouter,
    );
  }
}
