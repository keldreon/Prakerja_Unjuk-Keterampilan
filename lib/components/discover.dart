import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unjuk_keterampilan/components/discoverNav/featured_items.dart';
import 'package:unjuk_keterampilan/components/discoverNav/scan.dart';

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
    return ListView(children: [
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
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(15),
              prefixIcon: Icon(Icons.search_outlined),
              suffixIcon: IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => const Scan()));
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
      SizedBox(
        height: 200,
        child: ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            children: <Widget>[
              //reciewve detail
              Container(
                width: 160,
                color: Colors.red,
              ),
              Container(
                width: 160,
                color: Colors.blue,
              ),
              Container(
                width: 160,
                color: Colors.green,
              ),
              Container(
                width: 160,
                color: Colors.yellow,
              ),
              Container(
                width: 160,
                color: Colors.orange,
              ),
            ]),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(15, 15, 30, 0),
        child: const Text('Your Items'),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            leading: const FlutterLogo(size: 35.0),
            title: const Text(
              'Juice',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Row(
              children: [
                Text(
                  '\$ 2.00',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                ),
                Text('\$ 1.30', maxLines: 1, overflow: TextOverflow.ellipsis),
              ],
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const FeaturedItems()));
              },
              icon: Icon(MdiIcons.plus),
              color: Colors.blue,
              iconSize: 35,
              alignment: Alignment.center,
            ),
            isThreeLine: true,
          ),
        ),
      ),
      //todo: recieves for You
      Container(
        margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
        child: const Text('Recipe for You'),
      ),
      SizedBox(
        height: 200,
        child: ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            children: <Widget>[
              //reciewve detail
              Container(
                width: 160,
                color: Colors.red,
              ),
              Container(
                width: 160,
                color: Colors.blue,
              ),
              Container(
                width: 160,
                color: Colors.green,
              ),
              Container(
                width: 160,
                color: Colors.yellow,
              ),
              Container(
                width: 160,
                color: Colors.orange,
              ),
            ]),
      ),
    ]);
  }
}
