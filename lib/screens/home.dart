import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/screens/home_page.dart';
import 'package:instagram_clone/screens/search_page.dart';
import 'camera_page.dart';
import 'notifications_page.dart';
import 'profile_page.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage;

  var _pages = [
    HomePage(),
    SearchPage(),
    CameraPage(),
    NotificationsPage(),
    ProfilePage(0),
  ];

  @override
  void initState() {
    super.initState();
    currentPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Foundation.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(AntDesign.search1),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.plus_square),
            label: "Upload",
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.heart),
            label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.user),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
