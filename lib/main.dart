import 'package:filezy_project/features/home/screens/acceuil.dart';
import 'package:filezy_project/features/home/screens/start_page.dart';
import 'package:filezy_project/features/login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FilezyApp());
}

class FilezyApp extends StatelessWidget {
  const FilezyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Acceuil(),
      debugShowCheckedModeBanner: false,
    );
  }
}
