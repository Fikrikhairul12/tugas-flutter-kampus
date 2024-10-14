import 'package:flutter/material.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text('Kulkas'),
              subtitle: Text('Rp. 2.500.000'),
            )
          ),
          Card(
            child: ListTile(
              title: Text('TV LED'),
              subtitle: Text('Rp. 5.000.000'),
            )
          ),
          Card(
            child: ListTile(
              title: Text('Mesin Cuci'),
              subtitle: Text('Rp. 1.500.000'),
            )
          ),
        ]
      ),
    );
  }
}