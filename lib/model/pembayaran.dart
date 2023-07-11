import 'package:flutter/material.dart';
import 'package:projek_akhir/model/pesanan.dart';

class PembayaranScreen extends StatefulWidget {
  @override
  _PembayaranScreenState createState() => _PembayaranScreenState();
}

class _PembayaranScreenState extends State<PembayaranScreen> {
  int totalPrice = 0;
  List<String> selectedItems = [];

  void _addToCart(String item, int price) {
    setState(() {
      selectedItems.add(item);
      totalPrice += price;
    });
  }

  void _removeFromCart(String item, int price) {
    setState(() {
      selectedItems.remove(item);
      totalPrice -= price;
    });
  }

  void _resetCart() {
    setState(() {
      selectedItems.clear();
      totalPrice = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pembayaran'),
        backgroundColor: Colors.green[700],
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pesanan Anda:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            if (selectedItems.isNotEmpty)
              ListView.builder(
                shrinkWrap: true,
                itemCount: selectedItems.length,
                itemBuilder: (BuildContext context, int index) {
                  String item = selectedItems[index];
                  return ListTile(
                    title: Text(item),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle),
                      onPressed: () {
                        _removeFromCart(item, 10);
                      },
                    ),
                  );
                },
              ),
            if (selectedItems.isNotEmpty) SizedBox(height: 16.0),
            Text(
              'Total Harga: \$ $totalPrice',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _resetCart();
                  },
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
