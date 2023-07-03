import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/components/widgets/search.dart';
import 'package:unjuk_keterampilan/components/widgets/store/category_card.dart';
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
                  leading: Image.asset('assets/img/Image-dp.jpg'),
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
            const SearchWidget(),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: const Text('Shop by Category'),
            ),
            const CategoryCard(
                name: 'Product', imgDir: 'assets/img/Image-product.jpg'),
          ],
        ),
      ),
    );
  }
}
