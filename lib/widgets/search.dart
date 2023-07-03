import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unjuk_keterampilan/theme/theme.dart';

import 'package:unjuk_keterampilan/components/discoverNav/scan.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15),
            prefixIcon: const Icon(Icons.search_outlined),
            suffixIcon: IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const Scan()));
                },
                icon: Icon(MdiIcons.barcodeScan)),
            fillColor: Pallete.whiteColor,
            filled: true),
      ),
    );
  }
}
