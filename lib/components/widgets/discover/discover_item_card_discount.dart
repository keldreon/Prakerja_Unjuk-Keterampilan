import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unjuk_keterampilan/components/discoverNav/featured_items.dart';
import 'package:unjuk_keterampilan/theme/theme.dart';

class DiscountedCard extends StatelessWidget {
  final String title; //Strawberries
  final String value; //prediscount
  final String valueB; //value now
  final String grocery; //Pepperidge Farm
  final String imgDir;

  const DiscountedCard(
      {super.key,
      required this.title,
      required this.value,
      required this.valueB,
      required this.grocery,
      required this.imgDir});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        surfaceTintColor: Pallete.whiteColor,
        child: ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          leading: Image.asset(imgDir),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                grocery,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.w100, fontSize: 12),
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
                    decoration: TextDecoration.lineThrough),
              ),
              Text(
                '\$ $valueB',
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
      ),
    );
  }
}
