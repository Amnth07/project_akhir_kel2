import 'package:flutter/material.dart';
import 'package:projek_akhir/model/sosis.dart';
import 'package:projek_akhir/model/pempek.dart';
import 'package:projek_akhir/model/minuman.dart';
import 'package:projek_akhir/model/bakso.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Angkringan'),
        backgroundColor: Colors.green[700],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/angkringan.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.transparent,
              child: Text(
                'Selamat datang di angkringan kami!',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  _buildMenuItem(
                    icon: Icons.fastfood,
                    title: 'Sosis',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SosisScreen()),
                      );
                    },
                  ),
                  _buildMenuItem(
                    icon: Icons.fastfood,
                    title: 'Pempek',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PempekScreen()),
                      );
                    },
                  ),
                   _buildMenuItem(
                    icon: Icons.fastfood,
                    title: 'Bakso',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BaksoScreen()),
                      );
                    },
                  ),
                  _buildMenuItem(
                    icon: Icons.local_drink,
                    title: 'Minuman',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MinumanScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(
      {IconData icon = Icons.error,
      String title = '',
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: const Color.fromARGB(255, 205, 191, 191)),
          ),
        ),
        child: Row(
          children: [
            Icon(icon, size: 32, color: Colors.green[700]),
            SizedBox(width: 16.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
