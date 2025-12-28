import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'home/home_screen.dart';

void main() {
  runApp(SapphireGloryApp());
}

class SapphireGloryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sapphire Glory Engineering',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}
