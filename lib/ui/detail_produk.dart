import 'package:flutter/material.dart';

class DetailProduk extends StatefulWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;


  const DetailProduk({required this.kodeProduk, required this.namaProduk, required this.harga});

  @override
  State<DetailProduk> createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kode Produk : ' + widget.kodeProduk),
            Text('Nama Barang : ${widget.namaProduk}'),
            Text('Harga : ${widget.harga.toString()}'),
          ],
        ),
      ),
    );
  }
}