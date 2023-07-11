import 'package:flutter/material.dart';
import 'package:projek_akhir/model/pesanan.dart';

class MinumanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Minuman'),
      ),
      body: ListView(
        children: [
          _buildMinumanItem(
            name: 'Es Teh stroberi',
            description: 'Minuman teh manis dengan tambahan stroberi yang segar.',
            imageUrl: 'https://asset.kompas.com/crops/ozAIrh-5mlYSZtquyGpTlc2BBdA=/0x64:800x597/750x500/data/photo/2022/09/25/632fff6409aac.jpg',
          ),
          _buildMinumanItem(
            name: 'Es Jeruk',
            description: 'Minuman jeruk segar dengan es.',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwbdbeyiaqOXzXEFUp9Yfkv6DqI0-y2O6veQ&usqp=CAU',
          ),
          _buildMinumanItem(
            name: 'Es Cincau Susu',
            description: 'Minuman cincau segar dengan es dan tambahan susu.',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJdzZ5l1nFwMHbYxzELUPpSFYU9WBdLp-PFg&usqp=CAU',
          ),
          _buildMinumanItem(
            name: 'Milkshake',
            description: 'Minuman dingin dengan campuran susu dan es krim .',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA-5dcjd9EwNhvutxxy06vNux5lu6yEE02jA&usqp=CAU',
          ),
          _buildMinumanItem(
            name: 'Es Kelapa Muda',
            description: 'Minuman air kelapa segar dengan tambahan susu/gula.',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNGOK9dlx0SaD_wnRWTO8m9P8XpAn7Y-ncJQ&usqp=CAU',
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

  Widget _buildMinumanItem({required String name, required String description, required String imageUrl}) {
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
