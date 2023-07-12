import 'package:flutter/material.dart';
import 'package:projek_akhir/login_sreen.dart';
import 'package:projek_akhir/model/pembayaran.dart';
import 'package:projek_akhir/model/sosis.dart';
import 'package:projek_akhir/model/pempek.dart';
import 'package:projek_akhir/model/minuman.dart';
import 'package:projek_akhir/model/bakso.dart';
import 'package:projek_akhir/model/pembayaran.dart';
import 'package:projek_akhir/model/profile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Angkringan'),
        backgroundColor: Colors.green[700],
      ),
      bottomNavigationBar: Navbar(),
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
                        MaterialPageRoute(
                            builder: (context) => MinumanScreen()),
                      );
                    },
                  ),
                  _buildMenuItem(
                    icon: Icons.payment,
                    title: 'Pembayaran',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PembayaranScreen()),
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

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      color: Color.fromARGB(238, 175, 119, 76),
                    ),
                    Text(
                      'Home',
                      style: TextStyle(fontSize: 12.00),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => ProfileScreen()),);
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.account_box,
                      color: Colors.black45,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(fontSize: 12.00),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                      context, '/login', (route) => false);
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.logout_sharp,
                      color: Colors.black45,
                    ),
                    Text(
                      'logout',
                      style: TextStyle(fontSize: 12.00),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}