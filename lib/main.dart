import 'package:app_development/pages/detail_page/detail_page.dart';
import 'package:app_development/pages/intro/intro_page.dart';
import 'package:app_development/pages/product_page/product_page.dart';
import 'package:app_development/pages/shop_page/shop_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Edu Center",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4461F2),
        ),
      ),
      home: const IntroPage(),
    );
  }
}
