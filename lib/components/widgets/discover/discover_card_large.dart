import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unjuk_keterampilan/components/discoverNav/featured_items.dart';
import 'package:unjuk_keterampilan/theme/theme.dart';

class ItemDescription extends StatelessWidget {
  final String title; //Strawberries
  final String subtitle; //description
  final String value; //prediscount
  final String valueB; //value now
  final String grocery; //Pepperidge Farm
  const ItemDescription(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.value,
      required this.valueB,
      required this.grocery});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView(children: [
        ListTile(
          tileColor: Pallete.whiteColor,
          titleAlignment: ListTileTitleAlignment.top,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Pepperidge Farm',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 12,
                    color: Pallete.unselected),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Expanded(
                  flex: 4,
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 12,
                        color: Pallete.unselected),
                  ),
                ),
              ),
            ],
          ),
          subtitle: Row(
            children: [
              Text(
                '\$ $value',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 12,
                    decoration: TextDecoration.lineThrough,
                    color: Pallete.unselected),
              ),
              Text(
                '\t\$ $valueB',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
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
      ]),
    );
  }
}
