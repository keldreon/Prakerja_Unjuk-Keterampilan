import 'package:flutter/material.dart';

/*
https://www.figma.com/community/file/1160051068328867627/Traveling-Mobile-app---Pickolab-Studio

https://www.figma.com/community/file/1175106010672013724/Ecommerce-App-UI-Kit

https://www.figma.com/community/file/1176632391018692033/Plant-E-Commerce-%26-Online-Store-App-UI-Kit

https://www.figma.com/community/file/1043052073261558633/Plant-Care-App

*/

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
