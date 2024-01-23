import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController amountEditingController = TextEditingController();

  void convert() {
    result = double.parse(amountEditingController.text) * 12;
    setState(() {});
  }

  @override
  void dispose() {
    amountEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.inactiveGray,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.black,
        middle: Text(
          'USD to GHC Converter',
          style: TextStyle(color: CupertinoColors.systemOrange),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GHC ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            CupertinoTextField(
              controller: amountEditingController,
              style: const TextStyle(
                color: CupertinoColors.black,
              ),
              placeholder: 'Please enter the amount in USD',
              prefix: const Icon(CupertinoIcons.money_dollar),
              placeholderStyle: const TextStyle(
                color: CupertinoColors.black,
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                border: Border.all(
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
            const SizedBox(height: 10),
            CupertinoButton(
              //invoke convert function
              onPressed: convert,
              color: CupertinoColors.black,
              child: const Text(
                'Convert',
                style: TextStyle(
                  color: CupertinoColors.systemOrange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
