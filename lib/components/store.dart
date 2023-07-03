import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unjuk_keterampilan/components/discoverNav/scan.dart';
import 'package:unjuk_keterampilan/theme/theme.dart';

class StoreWidget extends StatefulWidget {
  const StoreWidget({super.key});

  @override
  State<StoreWidget> createState() => _StoreWidgetState();
}

class _StoreWidgetState extends State<StoreWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      home: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Card(
              surfaceTintColor: Pallete.whiteColor,
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                leading: Image(image: AssetImage('assets/img/Image-dp.jpg')),
                title: Text(
                  'Mason, Ohio',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text('5155 Financial Way,\nMason, OH 45040'),
                trailing: Text('Change', style: TextStyle(color: Colors.green)),
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
                  fillColor: Colors.white,
                  filled: true),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
            child: const Text('Shop by Category'),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              surfaceTintColor: Pallete.whiteColor,
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                leading:
                    Image(image: AssetImage('assets/img/Image-product.jpg')),
                title: Text(
                  'Produce',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
