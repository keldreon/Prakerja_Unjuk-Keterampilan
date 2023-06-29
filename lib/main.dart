import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/theme/theme.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      title: 'Plantscape',
      home: const MyHomePage(title: 'Plantscape'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.whiteColor,
        forceMaterialTransparency: true,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontFamily: 'Quicksand',
            color: Pallete.greenColor,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined,
                color: Pallete.unSelectedIcon),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.segment))
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You are in Home',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Pallete.whiteColor,
          selectedItemColor: Pallete.selectedIcon,
          unselectedItemColor: Pallete.unSelectedIcon,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'List'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: 'Account'),
          ]),
    );
  }
}
