import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/theme/theme.dart';

class FeaturedItems extends StatefulWidget {
  const FeaturedItems({super.key});

  @override
  State<FeaturedItems> createState() => _FeaturedItemsState();
}

class _FeaturedItemsState extends State<FeaturedItems> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Featured Items',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: IconButton(
                icon: const Icon(Icons.keyboard_arrow_left_rounded),
                iconSize: 30,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          body: SafeArea(
            top: false,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: Image.asset('assets/img/unsplash_grjHFqaCLCg.png').height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('img/whitebar.jpg'),
                ),
              ),
              child: Image.asset('assets/img/unsplash_grjHFqaCLCg.png'),
            ),
          ),
        ));
  }
}
