import 'package:flutter/material.dart';

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
          // Tambahkan item minuman lainnya di sini
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
