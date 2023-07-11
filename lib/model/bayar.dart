import 'package:flutter/material.dart';

class Bayar extends StatelessWidget {
  const Bayar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bayar Pesanan'),
        backgroundColor: Colors.green[700],
      ),
      body: Center(
        child: Text(
          'Ini Halaman Pesanan',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}