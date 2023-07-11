import 'package:flutter/material.dart';

class BaksoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Bakso'),
      ),
      body: ListView(
        children: [
          _buildSosisItem(
            name: 'Bakso Bakar',
            description: 'Bakso Bakar dengan cita rasa yang lezat.',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO4X8ktas3CZD6Nt40u--LQWJZktGN6hihng&usqp=CAU',
          ),
          _buildSosisItem(
            name: 'Bakso Bakar Jumbo',
            description: 'Bakso Bakar dengan cita rasa yang lezat dan ukuran yang jumbo.',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg4CMFf44GjF2TTU8xkW1QpC2yvZjJdARYBw&usqp=CAU',
          ),
          _buildSosisItem(
            name: 'Bakso Bakar Pedas Manis',
            description: 'Bakso Bakar pedas manis dengan rasa yang lezat dan mantap.',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHKxiowAKEuU6zG9YDKK7QKnBk-CmyKnJ35Q&usqp=CAU',
          ),
          _buildSosisItem(
            name: 'Bakso Bakar Mayonaise',
            description: 'Bakso Bakar dengan cita rasa yang lezat ditambahi dengan Mayonaise',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYWL9nCdSsHUuosdbKmHhxvUhQc3dCO-W0nQ&usqp=CAU',
          ),
          _buildSosisItem(
            name: 'Bakso Crispy',
            description: 'Bakso crispy dengan cita rasa yang lezat ',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7tT2Z3B2gq0L3cV-f9iPGA4XsCDp_haiP3Q&usqp=CAU',
          ),
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
