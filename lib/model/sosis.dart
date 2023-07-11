import 'package:flutter/material.dart';

class SosisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Sosis'),
      ),
      body: ListView(
        children: [
          _buildSosisItem(
            name: 'Sosis Ayam',
            description: 'Sosis ayam dengan rasa lezat.',
            imageUrl: 'https://www.tokomesin.com/wp-content/uploads/2015/07/4598415_fdds-tokomesin.jpg',
          ),
          _buildSosisItem(
            name: 'Sosis Daging Sapi',
            description: 'Sosis daging sapi dengan cita rasa yang gurih.',
            imageUrl: 'https://mesra.luberta.com/wp-content/uploads/sites/46/2014/10/sosis-lezat.jpg',
          ),
          // Tambahkan item sosis lainnya di sini
        ],
      ),
    );
  }

  Widget _buildSosisItem({required String name, required String description, required String imageUrl}) {
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
