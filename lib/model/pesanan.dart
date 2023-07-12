import 'package:flutter/material.dart';
import 'package:projek_akhir/model/bayar.dart';

class Pesanan extends StatefulWidget {
  const Pesanan({Key? key}) : super(key: key);

  @override
  _PesananState createState() => _PesananState();
}

class _PesananState extends State<Pesanan> {
  String makanan = '';
  int jumlahPesanan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesanan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nama Makanan atau Minuman',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  makanan = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Jumlah Pesanan',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  jumlahPesanan = int.tryParse(value) ?? 0;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (makanan.isNotEmpty && jumlahPesanan > 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailMakanan(
                        makanan: makanan,
                        jumlahPesanan: jumlahPesanan,
                      ),
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Informasi Tidak Lengkap'),
                        content: Text('Harap masukkan nama makanan dan jumlah pesanan.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context); // Tutup dialog
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Bayar'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailMakanan extends StatelessWidget {
  final String makanan;
  final int jumlahPesanan;

  const DetailMakanan({
    Key? key,
    required this.makanan,
    required this.jumlahPesanan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Makanan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Makanan yang Dipilih:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nama Makanan: $makanan',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8.0),
            Text(
              'Jumlah Pesanan: $jumlahPesanan',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Konfirmasi Pesanan'),
                      content: Text('Apakah makanan yang Anda pilih sesuai?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context); // Tutup dialog
                          },
                          child: Text('Ya'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context); // Tutup dialog
                          },
                          child: Text('Tidak'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Lanjutkan Pembayaran'),
            ),
          ],
        ),
      ),
    );
  }
}
