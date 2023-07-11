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
          SizedBox(height: 16.0),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pesanan()),
                 );
              },
              child: Text('Pesan'),
            ),
           _buildPempekItem(
            name: 'Pempek Adaan',
            description: 'Pempek adaan khas palembang.',
            imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8BtBoA04CElod130T-SmXogpgi7LPEXsL7Q&usqp=CAU',
          ),
          _buildPempekItem(
            name: 'Pempek Kulit',
            description: 'Pempek kulit ikan asli yang lezat.',
            imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl62jH0S2SoG0q7qQnP8b0S_zamlk73dSyJw&usqp=CAU',
          ),
          _buildPempekItem(
            name: 'Pempek Crispy',
            description: 'Pempek Crispy yang enak dan lezat.',
            imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn7v1Bt8xpmj3WosNq_16elq0XuJ8pkGuAiA&usqp=CAU',
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
