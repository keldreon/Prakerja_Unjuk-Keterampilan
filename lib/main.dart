import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unjuk_keterampilan/components/discover.dart';

import 'theme/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Shop Fresh',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const MyHomePage(title: 'Discover'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(key: _navigatorKey, onGenerateRoute: generateRoute),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _bottomNavBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Discover",
            activeIcon: Icon(Icons.search)),
        BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            label: "Store",
            activeIcon: Icon(Icons.storefront)),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "Profile",
            activeIcon: Icon(Icons.person)),
      ],
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: _onItemTapped,
      currentIndex: _currentTabIndex,
    );
  }

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        _navigatorKey.currentState?.pushReplacementNamed("Discover");
        break;
      case 1:
        _navigatorKey.currentState!.pushReplacementNamed("Store");
        break;
      case 2:
        _navigatorKey.currentState!.pushReplacementNamed("Profile");
        break;
    }
    setState(() {
      _currentTabIndex = index;
    });
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "Discover":
        return MaterialPageRoute(
            builder: (context) => const DiscoverWidget(
                  title: 'Discover',
                ));
      case "Store":
        return MaterialPageRoute(
            builder: (context) => Container(
                color: Colors.green,
                child: const Center(child: Text("Store"))));
      case "Profile":
        return MaterialPageRoute(
            builder: (context) => Container(
                color: Colors.red,
                child: const Center(child: Text("Profile"))));
      default:
        return MaterialPageRoute(
            builder: (context) => const DiscoverWidget(
                  title: 'Discover',
                ));
    }
  }
}
