import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HalamanDetail extends StatefulWidget {
  final String judul;
  final String deskripsi;
  final List<String> gambarList;
  final bool showTentangKami; // <-- tambah properti khusus Sejarah

  const HalamanDetail({
    Key? key,
    required this.judul,
    required this.deskripsi,
    required this.gambarList,
    this.showTentangKami = false, // default: tidak tampil
  }) : super(key: key);

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.judul)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Jika ada gambar, tampilkan slider dulu
          if (widget.gambarList.isNotEmpty) ...[
            const SizedBox(height: 10),
            CarouselSlider(
              options: CarouselOptions(
                height: 220,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {
                  setState(() => currentIndex = index);
                },
              ),
              items: widget.gambarList.map((img) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Colors.grey[200],
                    child: Image.asset(
                      img,
                      fit: BoxFit.contain,
                      width: double.infinity,
                    ),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 15),

            // Dot indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.gambarList.map((url) {
                int index = widget.gambarList.indexOf(url);
                return Container(
                  width: 5,
                  height: 10,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index
                        ? Colors.blue
                        : Colors.grey.shade400,
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 10),
          ],

          // ISI HALAMAN (scrollable)
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TAMPILKAN "TENTANG KAMI" HANYA UNTUK SEJARAH
                  if (widget.showTentangKami) ...[
                    const Text(
                      "Tentang Kami",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],

                  // DESKRIPSI
                  Text(
                    widget.deskripsi,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
