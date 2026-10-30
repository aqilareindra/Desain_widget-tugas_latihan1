import 'package:flutter/material.dart';

class HalamanStateful extends StatefulWidget {
  const HalamanStateful({super.key});

  @override
  State<HalamanStateful> createState() => _HalamanStatefulState();
}

class _HalamanStatefulState extends State<HalamanStateful> {
  int _hitung = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File 2 - Stateful Counter'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nilai Counter Saat Ini:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              '$_hitung',
              style: const TextStyle(
                fontSize: 56,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 32),
            // Menyusun tombol menggunakan Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => setState(() => _hitung--),
                  child: const Text('Kurang (-)'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () => setState(() => _hitung = 0),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade100),
                  child: const Text('Reset'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () => setState(() => _hitung++),
                  child: const Text('Tambah (+)'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}