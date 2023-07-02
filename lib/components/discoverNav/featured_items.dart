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
          body: SafeArea(
            top: false,
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('img/whitebar.jpg'),
                      ),
                    ),
                    child: Image.asset('img/unsplash_grjHFqaCLCg.png',
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
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
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
                )
              ],
            ),
          ),
        ));
  }
}
