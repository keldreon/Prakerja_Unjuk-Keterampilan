import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unjuk_keterampilan/components/discoverNav/featured_items.dart';
import 'package:unjuk_keterampilan/components/discoverNav/scan.dart';
import 'package:unjuk_keterampilan/theme/theme.dart';

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
                  children: <Widget>[
                    //reciewve detail
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: 200,
                      height: 300,
                      child: Card(
                        surfaceTintColor: Pallete.whiteColor,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Pallete.whiteColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/img/brooke-lark-1.png',
                                  height: 100,
                                  fit: BoxFit.contain,
                                  width: double.infinity,
                                ),
                              ),
                              const ListTile(
                                titleAlignment: ListTileTitleAlignment.center,
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Summer Favorites',
                                      style: TextStyle(fontSize: 18),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                    Text(
                                      'New Collection',
                                      style: TextStyle(fontSize: 13),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ],
                                ),
                                subtitle: Text(
                                  '20% Off',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Pallete.redColor),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor: Pallete.greenColor),
                                      onPressed: () {},
                                      child: const Text(
                                        'View',
                                        style: TextStyle(
                                            color: Pallete.whiteColor2,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(15, 15, 30, 0),
          child: const Text('Your Items'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            surfaceTintColor: Pallete.whiteColor,
            child: ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              leading: Image.asset('assets/img/kyaw-tun.png'),
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Strawberries',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Bread Factory',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12),
                  ),
                ],
              ),
              subtitle: const Row(
                children: [
                  Text(
                    '\$ 2.00',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough),
                  ),
                  Text(
                    '\$ 1.30',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 12,
                        color: Pallete.redColor),
                  ),
                ],
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const FeaturedItems()));
                },
                icon: Icon(MdiIcons.plus),
                color: Pallete.greenColor,
                iconSize: 35,
                alignment: Alignment.center,
              ),
            ),
          ),
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
              children: <Widget>[
                //reciewve detail
                Container(
                  padding: const EdgeInsets.all(15),
                  width: 200,
                  height: 300,
                  child: Card(
                    surfaceTintColor: Pallete.whiteColor,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Pallete.whiteColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/img/brooke-lark-1.png',
                              height: 100,
                              fit: BoxFit.contain,
                              width: double.infinity,
                            ),
                          ),
                          const ListTile(
                            titleAlignment: ListTileTitleAlignment.center,
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Weekly Ad',
                                  style: TextStyle(fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                Text(
                                  'New Collection',
                                  style: TextStyle(fontSize: 13),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ],
                            ),
                            subtitle: Text(
                              '15 Minutes',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Pallete.greenColor),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  width: 30,
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Pallete.greenColor),
                                  onPressed: () {},
                                  child: const Text(
                                    'View',
                                    style: TextStyle(
                                        color: Pallete.whiteColor2,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
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
