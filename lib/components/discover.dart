import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unjuk_keterampilan/components/discoverNav/scan.dart';
import 'package:unjuk_keterampilan/widgets/discover/discover_card.dart';
import 'package:unjuk_keterampilan/widgets/discover/discover_item_card_discount.dart';

class DiscoverWidget extends StatefulWidget {
  final String title;
  const DiscoverWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<DiscoverWidget> createState() => _DiscoverWidgetState();
}

class _DiscoverWidgetState extends State<DiscoverWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: ListView(children: [
        Container(
          margin: const EdgeInsets.fromLTRB(15, 30, 30, 0),
          width: MediaQuery.of(context).size.width,
          height: 40,
          child: Text(
            widget.title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(15),
                prefixIcon: const Icon(Icons.search_outlined),
                suffixIcon: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const Scan()));
                    },
                    icon: Icon(MdiIcons.barcodeScan)),
                fillColor: Colors.white,
                filled: true),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
          child: const Text('Collections for You'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 350,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  children: const <Widget>[
                    //reciewve detail
                    HomeCard(
                        imgDir: 'assets/img/brooke-lark-1.png',
                        title: 'Summer Favorite',
                        description: 'New Collection',
                        values: '20% Off'),
                    HomeCard(
                        imgDir: 'assets/img/stephanie-harvey.png',
                        title: 'Food Variety',
                        description: 'Now on sale!',
                        values: '30% Off'),
                  ]),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(15, 15, 30, 0),
          child: const Text('Your Items'),
        ),
        const DiscountedCard(
          grocery: 'Fresh Farm',
          title: 'Strawberries',
          value: '2.00',
          valueB: '1.30',
          imgDir: 'assets/img/kyaw-tun.png',
        ),
        const DiscountedCard(
          grocery: 'The Juicery',
          title: 'Juice',
          value: '2.00',
          valueB: '1.30',
          imgDir: 'assets/img/greg-rosenke.png',
        ),
        //todo: recieves for You
        Container(
          margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
          child: const Text('Recipe for You'),
        ),
        SizedBox(
          height: 350,
          width: MediaQuery.of(context).size.width,
          child: ListView(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              children: const <Widget>[
                //reciewve detail
                HomeCard(
                    title: 'Eggplant Salad',
                    description: 'Rice, bean, tomato, and cilantro in a shell.',
                    imgDir: 'assets/img/Image.png',
                    values: '15 Minutes'),
                HomeCard(
                    title: 'Chicken and Beef Tower',
                    description: 'Chicken and beef topping with...',
                    imgDir: 'assets/img/Image-1.png',
                    values: '4h 30m'),
              ]),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
