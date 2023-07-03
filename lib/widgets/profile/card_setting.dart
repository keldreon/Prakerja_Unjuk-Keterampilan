import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/theme/theme.dart';

class SettingWidget extends StatelessWidget {
  final String title;

  const SettingWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Card(
        surfaceTintColor: Colors.transparent,
        child: ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          title: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.navigate_next),
            color: Pallete.unselected,
            iconSize: 30,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
