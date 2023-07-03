import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/theme/theme.dart';
import 'package:unjuk_keterampilan/widgets/discover/discover_card.dart';
import 'package:unjuk_keterampilan/widgets/discover/discover_card_large.dart';

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
          body: ListView(children: [
            Column(
              children: [
                Stack(children: [
                  //image produk dan back button
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/img/whitebar.jpg'),
                        //whitebar untuk canvas kosong gambar HD
                      ),
                    ),
                    child: Image.asset('assets/img/unsplash_grjHFqaCLCg.png',
                        fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        color: Pallete.whiteColor,
                        child: IconButton(
                          icon: const Icon(Icons.keyboard_arrow_left_rounded),
                          iconSize: 30,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ),
                  ),
                ]),
                const ItemDescription(
                  title: 'Strawberry',
                  grocery: 'Fresh Farm',
                  subtitle:
                      'The Graden strawberry is a widely grown hybrid species of genus Fragraria, collectively known as the strawberries, which are cultivated worldwide for their fruit.',
                  value: '2.00',
                  valueB: '1.30',
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    children: [
                      Text('Featured Recipe'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      children: <Widget>[
                        Row(
                          children: [
                            SizedBox(
                              height: 350,
                              width: MediaQuery.of(context).size.width,
                              child: ListView(
                                  shrinkWrap: true,
                                  physics: const ScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  children: const <Widget>[
                                    //reciewve detail
                                    HomeCard(
                                        title: 'Eggplant Salad',
                                        description:
                                            'Rice, bean, tomato, and cilantro in a shell.',
                                        imgDir: 'assets/img/Image.png',
                                        values: '15 Minutes'),
                                    HomeCard(
                                        title: 'Chicken and Beef Tower',
                                        description:
                                            'Chicken and beef topping with...',
                                        imgDir: 'assets/img/Image-1.png',
                                        values: '4h 30m'),
                                  ]),
                            ),
                          ],
                        ),
                        //recipe detail
                      ]),
                ),
              ],
            ),
          ]),
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
