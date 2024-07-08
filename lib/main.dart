import 'package:flutter/material.dart';
import 'package:proyect_super_giros/Config/routers/routers.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SuperGiros',
      routerConfig: appRouter,
    );
  }
}
