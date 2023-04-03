import 'package:flutter/material.dart';
import 'package:fluttermap_2_hours/pages/home_page.dart';
import 'package:fluttermap_2_hours/pages/profile_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int currentPage = 0;

  List<Widget> pages = <Widget>[
    const HomePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentPage),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: const Icon(Icons.explore),
            label: 'Home',
            selectedIcon: const Icon(Icons.explore),
          ),
          NavigationDestination(
            icon: const Icon(Icons.account_circle),
            label: 'Profile',
            selectedIcon: const Icon(Icons.account_circle),
          ),
        ],
        selectedIndex: currentPage,
        onDestinationSelected: (int value) {
          setState(() {
            currentPage = value;
          });
        },
      ),
    );
  }
}
