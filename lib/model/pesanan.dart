import 'package:flutter/material.dart';
import 'package:projek_akhir/model/bayar.dart';

class Pesanan extends StatelessWidget {
  const Pesanan({Key? key}) : super(key: key);

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
            ),
            SizedBox(height: 16.0),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Jumlah Pesanan',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Bayar()),
                 );
              },
              child: Text('Bayar'),
            ),
          ],
        ),
      ),
    );
  }
}