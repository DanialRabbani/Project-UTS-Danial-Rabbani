import 'package:flutter/material.dart';
import 'halaman_detail.dart';
import 'halaman_grid.dart';
import 'package:url_launcher/url_launcher.dart';

class HalamanHome extends StatefulWidget {
  const HalamanHome({super.key});

  @override
  State<HalamanHome> createState() => _HalamanHomeState();
}

class _HalamanHomeState extends State<HalamanHome> {
  double scaleSejarah = 1.0;
  double scaleVisiMisi = 1.0;
  double scaleFasilitas = 1.0;
  double scaleLokasi = 1.0;

  Color borderSejarah = Colors.transparent;
  Color borderVisiMisi = Colors.transparent;
  Color borderFasilitas = Colors.transparent;
  Color borderLokasi = Colors.transparent;

  void _openPMB() async {
    final Uri url = Uri.parse('https://pmb.umbandung.ac.id/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Tidak bisa membuka link');
    }
  }

  Widget buildKartu({
    required IconData icon,
    required String title,
    required String description,
    required double scale,
    required void Function() onTap,
    required void Function(double) onScaleChange,
    Color borderColor = Colors.transparent,
  }) {
    return AnimatedScale(
      scale: scale,
      duration: const Duration(milliseconds: 150),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          splashColor: Colors.blue.withOpacity(0.3),
          highlightColor: Colors.blue.withOpacity(0.1),
          onTap: onTap,
          onTapDown: (_) => onScaleChange(0.97),
          onTapUp: (_) => onScaleChange(1.0),
          onTapCancel: () => onScaleChange(1.0),
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: borderColor, width: 2),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, size: 40, color: Colors.blue),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        description,
                        style: const TextStyle(fontSize: 16, height: 1.2),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios,
                    size: 18, color: Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header logo
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 4, 29, 129),
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: Image.asset(
                "assets/logoputih.png",
                width: 200,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Sejarah
                  buildKartu(
                    icon: Icons.school,
                    title: "Sejarah UMBandung",
                    description:
                        "Universitas Muhammadiyah Bandung merupakan kampus modern dengan fasilitas lengkap dan lingkungan akademik yang kondusif.",
                    scale: scaleSejarah,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const HalamanDetail(
                            judul: "Profil UMBandung",
                            deskripsi: """
Universitas Muhammadiyah Bandung (UM Bandung) didirikan berdasarkan Surat Izin Kemenristek Dikti No. 205/KPT/I/2016 yang diterbitkan pada tanggal 14 Juni 2016 menyelenggarakan Program Pendidikan tinggi. Seiring berjalan waktu, berdasarkan Surat Keputusan Menteri Pendidikan dan Kebudayaan Nomor 1195/M/2020 Tentang Izin Penyatuan Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Bandung ke Universitas Muhammadiyah Bandung di Kota Bandung yang diselenggarakan oleh Persyarikatan Muhammadiyah, tanggal 30 Desember 2020, dan kemudian berdasarkan Surat Keputusan Menteri Agama Nomor 328 Tahun 2021 Tentang Izin Perubahan Bentuk Sekolah Tinggi Agama Islam Muhammadiyah Bandung Menjadi Fakultas Agama Islam Universitas Muhammadiyah Bandung, tanggal 12 Maret 2021. Pada saat ini Universitas Muhammadiyah Bandung memiliki 18 program studi unggulan dengan 4 fakultas yakni:

1.Fakultas Sains dan Teknologi;
2.Fakultas Sosial dan Humaniora;
3.Fakultas Ekonomi dan Bisnis;
4.Fakultas Agama Islam.
5.Fakultas Farmasi

Cita-cita besar UMBandung adalah melahirkan para Teknopreneur Muda Islami, yang selain memiliki kemampuan akademis, tapi juga memiliki sikap mental dan enterpreneur skill/ kewirausahaan, serta memiliki kemampuan dalam memanfaatkan kemajuan teknologi. Universitas Muhammadiyah Bandung (UM Bandung) mengemban amanat Persyarikatan, umat dan bangsa yang tidak sederhana. Amanat untuk membangun pusat-pusat keunggulan (center of excellence) dan inovasi sebagai upaya akselerasi dakwah amar makruf nahyi munkar dalam rangka mewujudkan masyarakat Islam yang sebenar-benarnya. Mewujudkan masyarakat terdidik yang unggul dan berdaya saing. Masagi dalam spiritualitas, intelektualitas dan humanitas. Mandiri dan menjadi elite penggerak perubahan serta pengembangan ekonomi dan budaya bangsa.

Pusat keunggulan dan inovasi yang diharapkan adalah bertumbuhnya technopreneurship yang berbasis nilai-nilai keislaman. Pusat keunggulan dan inovasi ini sekaligus mengukuhkan visi akademik UM Bandung sebagai Islamic Technopreneurial University. Tiga pilar utamanya adalah sebagai kampus Islami, kampus teknologi dan kampus entrepreneurship. Melalui ketiga pilarnya itu, UM Bandung berharap dapat menjalankan peran pentingnya dalam membangun keunggulan dan inovasi di bidang pendidikan, penelitian, dan pengabdian pada masyarakat yang berbasis Al-Islam-Kemuhammadiyahan, sekaligus menjalankan tanggung jawab keumatan, kebangsaan serta tanggung jawab kemanusiaan globalnya.
                                """,
                            gambarList: [
                              "assets/gedung.png",
                              "assets/rektor_crop.png",
                              "assets/features-3.png",
                            ],
                            showTentangKami: true,
                          ),
                        ),
                      );
                    },
                    onScaleChange: (value) =>
                        setState(() => scaleSejarah = value),
                    borderColor: borderSejarah,
                  ),
                  const SizedBox(height: 20),

                  // Visi & Misi
                  buildKartu(
                    icon: Icons.flag,
                    title: "Visi & Misi",
                    description:
                        "Menjadi universitas unggul berbasis nilai Islam dan berdaya saing global.",
                    scale: scaleVisiMisi,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const HalamanDetail(
                            judul: "Visi dan Misi",
                            deskripsi: """
Visi:
Universitas memiliki visi pada tahun 2045 menjadi Islamic Technopreneurial University yang unggul dan memberi manfaat nyata bagi umat dan bangsa.

Misi:
Universitas memiliki misi sebagai tanggungjawab yang akan diwujudkan pada tahun 2045 adalah:

1.Menyelenggarakan pendidikan dan pembelajaran yang memiliki keunggulan inovasi dan berjiwa entrepreneur.
2.Menyelenggarakan penelitian yang berkontribusi pada pengembangan ilmu pengetahuan, teknologi, dan seni serta peningkatan inovasi.
3.Menyelenggarakan pengabdian kepada masyarakat dalam rangka pendidikan dan pembelajaran, berdasarkan hasil-hasil penelitian.
4.Menyelenggarakan pembinaan dalam internalisasi dan penguatan nilai-nilai Al-Islam Kemuhammadiyahan.
5.Menyelenggarakan manajemen dan tata kelola Universitas dengan prinsip good university governance untuk meningkatkan kapasitas dan mutu secara berkelanjutan.

Tujuan:
Universitas menjalankan misi sebagaimana dimaksud dengan tujuan:
1.Menghasilkan lulusan yang beriman, berakhlaq, memiliki kompetensi profesional yang tinggi, serta unggul dalam inovasi dan kerjasama.
2.Menghasilkan publikasi dan inovasi yang berkontribusi pada pengembangan ilmu pengetahuan, teknologi, dan seni serta peningkatan perekonomian dan kemaslahatan
3.Menghasilkan dampak positif pengabdian kepada masyarakat dan pemberdayaan masyarakat secara berkelanjutan
4.Menghasilkan peningkatan pemahaman dan penguatan nilai-nilai Al-Islam Kemuhammadiyahan serta suasana kampus yang islami.
5.Mewujudkan sistem manajemen dan tata kelola Universitas dengan prinsip good university governance untuk meningkatkan kapasitas dan mutu secara berkelanjutan.
                    """,
                            gambarList: [],
                          ),
                        ),
                      );
                    },
                    onScaleChange: (value) =>
                        setState(() => scaleVisiMisi = value),
                    borderColor: borderVisiMisi,
                  ),
                  const SizedBox(height: 20),

                  // Fasilitas
                  buildKartu(
                    icon: Icons.business,
                    title: "Fasilitas",
                    description:
                        "Lihat fasilitas lengkap kampus Universitas Muhammadiyah Bandung.",
                    scale: scaleFasilitas,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const HalamanGrid(),
                        ),
                      );
                    },
                    onScaleChange: (value) =>
                        setState(() => scaleFasilitas = value),
                    borderColor: borderFasilitas,
                  ),
                  const SizedBox(height: 40),

                  //PMB
                  buildKartu(
                    icon: Icons.app_registration,
                    title: "PMB Online",
                    description:
                        "Pendaftaran Mahasiswa Baru Universitas Muhammadiyah Bandung.",
                    scale: scaleLokasi,
                    onTap: () {
                      _openPMB();
                    },
                    onScaleChange: (value) =>
                        setState(() => scaleLokasi = value),
                    borderColor: Colors.transparent,
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Lokasi Kami",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Lokasi
                  AnimatedScale(
                    scale: scaleLokasi,
                    duration: const Duration(milliseconds: 150),
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        onTap: () {
                          launchUrl(
                            Uri.parse(
                                "https://www.google.com/maps/place/Universitas+Muhammadiyah+Bandung/@-6.9362875,107.7079237,17z/data=!4m6!3m5!1s0x2e68e87f933b6c55:0x8481a5df48e2a169!8m2!3d-6.9361447!4d107.7090265!16s%2Fg%2F11c4jq0666?entry=ttu&g_ep=EgoyMDI1MTEyMy4xIKXMDSoASAFQAw%3D%3D"),
                            mode: LaunchMode.externalApplication,
                          );
                        },
                        borderRadius: BorderRadius.circular(8),
                        splashColor: Colors.blue.withOpacity(0.3),
                        highlightColor: Colors.blue.withOpacity(0.1),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: borderLokasi, width: 2),
                            boxShadow: const [
                              BoxShadow(color: Colors.black12, blurRadius: 4),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.place, color: Colors.blue),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  "Jl. Soekarno-Hatta No.752, Cipadung Kidul, Kecamatan Panyileukan, Kota Bandung, Jawa Barat.",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
