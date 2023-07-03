import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/components/profileNav/accordion.dart';
import 'package:unjuk_keterampilan/components/widgets/profile/card_setting.dart';
import 'package:unjuk_keterampilan/components/widgets/profile/identity.dart';
import 'package:unjuk_keterampilan/theme/theme.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: Scaffold(
        body: ListView(
          children: [
            const Identity(name: 'Grace Ficke', email: 'grace@atomicrobot.com'),
            const Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Accordion(
                  title: 'Baskerfield',
                  content: 'Change Store',
                )),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Card(
                surfaceTintColor: Pallete.whiteColor,
                child: ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  title: Text(
                    'Store Hours',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                      'Monday-Friday: 6:00am - 11:00pm\nSaturday: 6:00am - 9:00pm\nSunday: 8:00am - 9:00pm'),
                  isThreeLine: true,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Card(
                surfaceTintColor: Pallete.whiteColor,
                child: ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  title: Text(
                    'Contact',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text('(513) 505-2876'),
                  isThreeLine: true,
                ),
              ),
            ),
            const SettingWidget(title: 'Notifications'),
            const SettingWidget(title: 'App Feedback'),
            const SettingWidget(
              title: 'Privacy Policy',
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Pallete.redColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 14),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Log Out',
                    style: TextStyle(
                      color: Pallete.whiteColor,
                      fontSize: 22,
                    ),
                  )),
            ),
            const Center(
              child: Text(
                'Version 0.0.0',
                style: TextStyle(fontSize: 14, color: Pallete.unselected),
              ),
            )
          ],
        ),
      ),
    );
  }
}
