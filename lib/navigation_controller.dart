import 'package:crunchyanime/bookmark/screen/bookmark_screen.dart';
import 'package:crunchyanime/home/home_screen.dart';
import 'package:crunchyanime/search/search_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class NavigationController extends StatefulWidget {
  const NavigationController({Key? key}) : super(key: key);

  @override
  State<NavigationController> createState() => _NavigationControllerState();
}

class _NavigationControllerState extends State<NavigationController> {

  int _page = 0;

  void onTabTapped(int index) {
    setState(() {
      _page = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    final List<Widget> widgetsChildren = [
      const HomeScreen(),
      const SearchPage(),
      const BookmarkScreen(),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: widgetsChildren[_page],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.white,
        height: 70,
        items: const [
          Icon(Icons.tv, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.bookmark_outline, size: 30),
        ],
        onTap: onTabTapped,
      ),
    );
  }
}
