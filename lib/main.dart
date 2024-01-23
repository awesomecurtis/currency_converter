import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'currency_converter_material_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(
    return const CupertinoApp(
      home:
          // CurrencyConverterMaterialPage(),
          CurrencyConverterCupertinoPage(),
    );
  }
}
