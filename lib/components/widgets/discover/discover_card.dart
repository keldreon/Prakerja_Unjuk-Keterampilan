import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/theme/theme.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String description;
  final String imgDir;
  final String values;

  const HomeCard(
      {super.key,
      required this.title,
      required this.description,
      required this.imgDir,
      required this.values});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 200,
      height: 300,
      child: Card(
        surfaceTintColor: Pallete.whiteColor,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Pallete.whiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  //'assets/img/Image.png
                  imgDir,
                  height: 100,
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              ),
              ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                title: SizedBox(
                  width: 50,
                  height: 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        //'Eggplant Salad'
                        title,
                        style: const TextStyle(fontSize: 17),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Text(
                        //'Rice, bean, tomato, and cilantro in a shell.'
                        description,
                        style: const TextStyle(fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      ),
                    ],
                  ),
                ),
                subtitle: Text(
                  //'15 Minutes'
                  values,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Pallete.greenColor),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                        child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Pallete.greenColor),
                      onPressed: () {},
                      child: const Text(
                        'View',
                        style: TextStyle(
                            color: Pallete.whiteColor2,
                            fontWeight: FontWeight.w300),
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
