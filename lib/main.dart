import 'package:flutter/material.dart';
import 'screens/halaman_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profil Kampus Muhammadiyah Bandung",
      home: HalamanHome(),
    );
  }
}
