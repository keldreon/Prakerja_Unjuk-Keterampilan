import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/theme/theme.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String imgDir;
  const CategoryCard({super.key, required this.name, required this.imgDir});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        surfaceTintColor: Pallete.whiteColor,
        child: ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          leading: Image.asset(imgDir),
          title: Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 17),
          ),
        ),
      ),
    );
  }
}
