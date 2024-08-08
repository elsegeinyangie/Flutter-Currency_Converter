import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "00.00",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            TextField(
              
            ),
          ],
        ),
      ),
    );
  }
}
