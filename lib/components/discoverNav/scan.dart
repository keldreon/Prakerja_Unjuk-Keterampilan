import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unjuk_keterampilan/theme/theme.dart';

import 'featured_items.dart';

class Scan extends StatelessWidget {
  const Scan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scan Items',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scan Items'),
          leading: IconButton(
            icon: const Icon(Icons.keyboard_arrow_left_outlined),
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: ListView(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: Image.asset('assets/img/Image2.jpg').height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('img/whitebar.jpg'),
                  ),
                ),
                child: Image.asset('assets/img/Image2.jpg'),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(15, 15, 30, 0),
                child: const Text(
                  'Items',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    leading: Image.asset('assets/img/Image3.jpg'),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Millano Cookies',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Pepperidge Farm',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 13),
                        ),
                      ],
                    ),
                    subtitle: const Row(
                      children: [
                        Text(
                          '\$ 3.40',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Pallete.greenColor),
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
                    isThreeLine: true,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
