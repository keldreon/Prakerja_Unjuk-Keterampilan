import 'package:flutter/material.dart';

class StoreWidget extends StatefulWidget {
  const StoreWidget({super.key});

  @override
  State<StoreWidget> createState() => _StoreWidgetState();
}

class _StoreWidgetState extends State<StoreWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
            child: ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              leading: FlutterLogo(size: 35.0),
              title: const Text(
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
      ],
    );
  }
}
