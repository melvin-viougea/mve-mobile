import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import '../../pages/feed/feed_page.dart';
import '../../pages/notifications/notifications_page.dart';
import '../../pages/profil/profil_page.dart';
import '../../pages/videos/videos_page.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const FeedPage(),
    const VideosPage(),
    const NotificationsPage(),
    const ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: Colors.deepPurpleAccent,
        strokeColor: const Color(0x30040307),
        unSelectedColor: const Color(0xffacacac),
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            icon: const Icon(Icons.dashboard),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.subscriptions),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.notifications),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.person),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
