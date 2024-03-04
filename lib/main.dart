import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return const MaterialApp(debugShowCheckedModeBanner: false, home: splash());
  }
}
