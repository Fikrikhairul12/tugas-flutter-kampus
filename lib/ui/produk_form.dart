import 'package:flutter/material.dart';
import 'package:tes1/ui/detail_produk.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Form Produk'),
          backgroundColor: Colors.blue,
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHarga(),
            _tombolSimpan(),
          ]
        ),
      ),
    );
  }

  _textboxKodeProduk(){
    return TextField(
      decoration: const InputDecoration(labelText: 'Kode Produk'),
      controller: _kodeProdukTextboxController,
    );
  }

  _textboxNamaProduk(){
    return TextField(
      decoration: const InputDecoration(labelText: 'nama Produk'),
      controller: _namaProdukTextboxController,
    );
  }

  _textboxHarga(){
    return TextField(
      decoration: const InputDecoration(labelText: 'harga'),
      controller: _hargaProdukTextboxController,
    );
  }

  _tombolSimpan(){
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          String kode_produk = _kodeProdukTextboxController.text;
          String nama_produk = _namaProdukTextboxController.text;
          int harga = int.parse(_hargaProdukTextboxController.text);

          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailProduk(kodeProduk: kode_produk, namaProduk: nama_produk, harga: harga)));
        },
        child: const Text('Simpan')
      ),
    );
  }
}