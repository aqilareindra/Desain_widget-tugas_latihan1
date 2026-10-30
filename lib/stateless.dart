import 'package:flutter/material.dart';

class HalamanStateless extends StatelessWidget {
  const HalamanStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File 1 - Profil & Kartu'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // --- BAGIAN 1: PROFIL ---
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.teal,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 16),
            const Text(
              'Reindra Iftikhar Aqila',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Baris ikon kontak menggunakan Row dan Container
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIkonKontak(Icons.email, Colors.red),
                const SizedBox(width: 16),
                _buildIkonKontak(Icons.phone, Colors.green),
                const SizedBox(width: 16),
                _buildIkonKontak(Icons.chat, Colors.blue),
              ],
            ),

            const SizedBox(height: 32),
            const Divider(),
            const SizedBox(height: 16),

            // --- BAGIAN 2: KARTU MAHASISWA ---
            const Text(
              'Daftar Mahasiswa',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Menampilkan 3 kartu dalam Column
            Column(
              children: const [
                KartuMahasiswa(
                  nama: 'Reindra Iftikhar Aqila',
                  nim: '3012410056',
                  prodi: 'Informatika',
                ),
                SizedBox(height: 8),
                KartuMahasiswa(
                  nama: 'Zubat Anwar',
                  nim: '3012410060',
                  prodi: 'Informatika',
                ),
                SizedBox(height: 8),
                KartuMahasiswa(
                  nama: 'Eqi',
                  nim: '3012410002',
                  prodi: 'Informatika',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildIkonKontak(IconData icon, MaterialColor color) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.shade100,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color, width: 2),
      ),
      child: Icon(icon, color: color),
    );
  }
}


class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: const Icon(Icons.account_circle, size: 40),
        title: Text(nama, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('$nim - $prodi'),
      ),
    );
  }
}