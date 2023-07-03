import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unjuk_keterampilan/components/discoverNav/scan.dart';
import 'package:unjuk_keterampilan/theme/app_theme.dart';
import 'package:unjuk_keterampilan/theme/pallete.dart';

class StoreWidget extends StatefulWidget {
  const StoreWidget({super.key});

  @override
  State<StoreWidget> createState() => _StoreWidgetState();
}

class _StoreWidgetState extends State<StoreWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                surfaceTintColor: Pallete.whiteColor,
                child: ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  leading: Image.asset('/img/Image-dp.jpg'),
                  title: const Text(
                    'Mason, Ohio',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: const Text('5155 Financial Way,\nMason, OH 45040'),
                  trailing: const Text('Change',
                      style: TextStyle(color: Pallete.greenColor)),
                  isThreeLine: true,
                ),
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
                    fillColor: Pallete.whiteColor,
                    filled: true),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: const Text('Shop by Category'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                surfaceTintColor: Pallete.whiteColor,
                child: ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  leading: Image.asset('/img/Image-product.jpg'),
                  title: const Text(
                    'Produce',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
