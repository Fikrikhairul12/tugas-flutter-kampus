import 'package:flutter/material.dart';
import 'package:tes1/ui/detail_produk.dart';
import 'package:tes1/ui/produk_form.dart';

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
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () async {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProdukForm()));
            },
          )
        ]
      ),
      body: ListView(
        children: const [
          ItemProduk(
            kodeProduk: 'A001',
            namaProduk: 'Kulkas',
            harga: 2500000
          ),
          ItemProduk(
            kodeProduk: 'A002',
            namaProduk: 'TV LED',
            harga: 5000000
          ),
          ItemProduk(
            kodeProduk: 'A003',
            namaProduk: 'Mesin Cuci',
            harga: 1500000
          ),
        ]
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  const ItemProduk({required this.kodeProduk, required this.namaProduk, required this.harga});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProduk(kodeProduk: kodeProduk, namaProduk: namaProduk, harga: harga)));},
    );
  }
}