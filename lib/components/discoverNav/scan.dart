import 'package:flutter/material.dart';

class Scan extends StatelessWidget {
  const Scan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scan Items',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scan Items'),
        ),
        body: Column(
          children: [Image.asset('assets/img/Image2.jpg')],
        ),
      ),
    );
  }
}
