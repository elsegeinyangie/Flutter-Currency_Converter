import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterStates();
}

class _CurrencyConverterStates extends State<CurrencyConverter> {
  double result = 0.0;
  final TextEditingController textEditingController = TextEditingController();

  void convertButton() {
    double? value = double.tryParse(textEditingController.text.trim());

    if (value != null) {
      result = value * 0.02;
      setState(() {});
    }
  }

  void resetButton() {
    result = 0.0;
    textEditingController.clear();
    setState(() {});
  }

  ButtonStyle buttonStyle() {
    return const ButtonStyle(
      backgroundColor:
          WidgetStatePropertyAll(Color.fromARGB(255, 163, 217, 253)),
      minimumSize: WidgetStatePropertyAll(Size(100, 50)),
      foregroundColor: WidgetStatePropertyAll(Colors.black),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 58, 92),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Column(
          children: [
            Text(
              "Currency Converter",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "EGP to USD",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '\$ $result',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              TextField(
                controller: textEditingController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  filled: true,
                  hintText: "Enter Amount in EGP",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: convertButton,
                      style: buttonStyle(),
                      child: const Text("Convert"),
                    ),
                    TextButton(
                      onPressed: resetButton,
                      style: buttonStyle(),
                      child: const Text("Reset"),
                    ),
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
