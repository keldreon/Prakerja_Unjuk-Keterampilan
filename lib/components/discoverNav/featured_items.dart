import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
          body: ListView(children: [
            Column(
              children: [
                Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/img/whitebar.jpg'),
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
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: ListView(children: [
                    ListTile(
                      tileColor: Pallete.whiteColor,
                      titleAlignment: ListTileTitleAlignment.top,
                      title: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Strawberries',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 25),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Pepperidge Farm',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 12,
                                color: Pallete.unselected),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                            child: Expanded(
                              flex: 4,
                              child: Text(
                                'The Graden strawberry is a widely grown hybrid species of genus Fragraria, collectively known as the strawberries, which are cultivated worldwide for their fruit.',
                                style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: 12,
                                    color: Pallete.unselected),
                              ),
                            ),
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
                                decoration: TextDecoration.lineThrough,
                                color: Pallete.unselected),
                          ),
                          Text(
                            '\t\$ 1.30',
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
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const FeaturedItems()));
                        },
                        icon: Icon(MdiIcons.plus),
                        color: Pallete.greenColor,
                        iconSize: 35,
                        alignment: Alignment.center,
                      ),
                    ),
                  ]),
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
                                  children: <Widget>[
                                    //reciewve detail
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      width: 200,
                                      height: 300,
                                      child: Card(
                                        surfaceTintColor: Pallete.whiteColor,
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        color: Pallete.whiteColor,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5.0, vertical: 5.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                child: Image.asset(
                                                  'assets/img/Image.png',
                                                  height: 100,
                                                  fit: BoxFit.contain,
                                                  width: double.infinity,
                                                ),
                                              ),
                                              const ListTile(
                                                titleAlignment:
                                                    ListTileTitleAlignment
                                                        .center,
                                                title: SizedBox(
                                                  width: 50,
                                                  height: 75,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Eggplant Salad',
                                                        style: TextStyle(
                                                            fontSize: 17),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        maxLines: 2,
                                                      ),
                                                      Text(
                                                        'Rice, bean, tomato, and cilantro in a shell.',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        maxLines: 4,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                subtitle: Text(
                                                  '15 Minutes',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color:
                                                          Pallete.greenColor),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15,
                                                        vertical: 15),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    const SizedBox(
                                                      width: 30,
                                                    ),
                                                    Expanded(
                                                        child: TextButton(
                                                      style: TextButton.styleFrom(
                                                          backgroundColor:
                                                              Pallete
                                                                  .greenColor),
                                                      onPressed: () {},
                                                      child: const Text(
                                                        'View',
                                                        style: TextStyle(
                                                            color: Pallete
                                                                .whiteColor2,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                      ),
                                                    ))
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
                        //reciewve detail
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
