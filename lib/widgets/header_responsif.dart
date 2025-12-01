import 'package:flutter/material.dart';

class HeaderResponsif extends StatelessWidget {
  final String judul;
  const HeaderResponsif({super.key, required this.judul});

  @override
  Widget build(BuildContext context) {
    double lebar = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      color: Colors.blue,
      child: Text(
        judul,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: lebar < 400 ? 20 : 28,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
