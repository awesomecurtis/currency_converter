import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Currency Converter',
          style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '0',
            style: TextStyle(
              fontSize: 55,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          TextField(
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: 'Please enter the amount in USD',
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              prefixIcon: Icon(Icons.monetization_on_outlined),
              prefixIconColor: Colors.black,
              filled: true,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
                // borderRadius: BorderRadius.circular(5),
              ),
            ),
            keyboardType: TextInputType.numberWithOptions(
              decimal: true,
            ),
          ),
          SizedBox(height: 10),
          // ElevatedButton(
          //   onPressed: null,
          //   style: TextButton.styleFrom(
          //     backgroundColor: Colors.black,
          //     foregroundColor: Colors.white,
          //     minimumSize: Size(double.infinity, 50),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(5),
          //     )
          //   ),
          //   child: Text('Convert'),
          // ),
        ],
      ),
    );
  }
}
