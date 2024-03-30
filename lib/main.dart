import 'package:car_rental/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Car Rental APPppppp",
      home: const MainPage(),
      theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.indigo,
              titleTextStyle: TextStyle(color: Colors.amber))),
      debugShowCheckedModeBanner: false,
    );
  }
}
