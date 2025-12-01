import 'package:flutter/material.dart';

class HalamanGrid extends StatelessWidget {
  const HalamanGrid({super.key});

  final List<Map<String, String>> dataGambar = const [
    {"gambar": "assets/auditorium.png", "nama": "Auditorium"},
    {"gambar": "assets/kelas.png", "nama": "Ruang Kelas"},
    {"gambar": "assets/perpus.png", "nama": "Perpustakaan"},
    {"gambar": "assets/musala.png", "nama": "Mushala"},
    {"gambar": "assets/opieun.png", "nama": "Kantin"},
    {"gambar": "assets/lab-komputer.png", "nama": "Lab Komputer"},
    {"gambar": "assets/lab-informatika.png", "nama": "Lab Informatika"},
    {"gambar": "assets/lab-biologi.png", "nama": "Lab Biologi"},
    {"gambar": "assets/lab-biotek.png", "nama": "Lab Bioteknologi"},
    {"gambar": "assets/lab-elektro.png", "nama": "Lab Elektro"},
    {"gambar": "assets/lab-farmasetika.png", "nama": "Lab Farmasetika"},
    {"gambar": "assets/lab-ilkom.png", "nama": "Lab Ilmu Komunikasi"},
    {"gambar": "assets/lab-kimia.png", "nama": "Lab Kimia"},
    {"gambar": "assets/lab-kpi.png", "nama": "Lab Komunikasi Penyiaran Islam"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fasilitas")),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.95,
        ),
        itemCount: dataGambar.length,
        itemBuilder: (context, index) {
          final item = dataGambar[index];
          return Column(
            children: [
              Expanded(
                child: HoverZoomCard(
                  gambar: item["gambar"]!,
                  nama: item["nama"]!,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                item["nama"]!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          );
        },
      ),
    );
  }
}

class HoverZoomCard extends StatefulWidget {
  final String gambar;
  final String nama;

  const HoverZoomCard({super.key, required this.gambar, required this.nama});

  @override
  State<HoverZoomCard> createState() => _HoverZoomCardState();
}

class _HoverZoomCardState extends State<HoverZoomCard> {
  double scale = 1.0;
  bool showOverlay = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          scale = 1.05;
          showOverlay = true;
        });
      },
      onExit: (_) {
        setState(() {
          scale = 1.0;
          showOverlay = false;
        });
      },
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            scale = 1.05;
            showOverlay = true;
          });
        },
        onTapUp: (_) {
          setState(() {
            scale = 1.0;
            showOverlay = false;
          });
        },
        child: Stack(
          children: [
            AnimatedScale(
              scale: scale,
              duration: const Duration(milliseconds: 200),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.gambar,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
            // Overlay hanya muncul di atas foto
            if (showOverlay)
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text(
                  widget.nama,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
