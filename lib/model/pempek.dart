import 'package:flutter/material.dart';
import 'package:projek_akhir/model/pesanan.dart';

class PempekScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Pempek'),
      ),
      body: ListView(
        children: [
          _buildPempekItem(
            name: 'Pempek Kapal Selam',
            description: 'Pempek dengan telur di dalamnya.',
            imageUrl: 'https://topwisata.info/wp-content/uploads/2020/08/pempek_kapal_selam1.jpg',
          ),
          _buildPempekItem(
            name: 'Pempek Lenjer',
            description: 'Pempek panjang dengan isi yang kenyal.',
            imageUrl: 'https://assets.ayobandung.com/crop/2x0:1199x721/750x500/webp/photo/2023/03/16/pempek-3174024653.png',
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pesanan()),
                 );
              },
              child: Text('Pesan'),
            ),
        ],
      ),
    );
  }

  Widget _buildPempekItem({required String name, required String description, required String imageUrl}) {
    return Card(
      child: ListTile(
        leading: Image.network(
          imageUrl,
          width: 48,
          height: 48,
        ),
        title: Text(name),
        subtitle: Text(description),
      ),
    );
  }
}
