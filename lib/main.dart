import 'package:flutter/material.dart';
import 'package:tes1/column_widget.dart';
import 'package:tes1/hello_world.dart';
import 'package:tes1/row_widget.dart';
import 'package:tes1/ui/produk_form.dart';
import 'package:tes1/ui/produk_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aplikasi Flutter Pertama',
      home: ProdukPage()
    );
  }
}