import 'package:flutter/material.dart';

class KartuInformasi extends StatelessWidget {
  final IconData? ikon;
  final String judul;
  final String isi;
  final bool hover;
  final bool isMinimal;

  KartuInformasi({
    super.key,
    this.ikon,
    required this.judul,
    required this.isi,
    this.hover = false,
    this.isMinimal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isMinimal
          ? const EdgeInsets.fromLTRB(12, 4, 12, 12) // Mulai lebih ke atas
          : const EdgeInsets.all(14),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: hover ? Colors.blue.shade900 : Colors.transparent,
          width: 2,
        ),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: isMinimal
          ? Align(
              alignment: Alignment.topLeft,
              child: Text(
                isi,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (ikon != null) Icon(ikon, size: 40, color: Colors.blue),
                if (ikon != null) const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        judul,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        isi,
                        style: const TextStyle(fontSize: 16, height: 1.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
