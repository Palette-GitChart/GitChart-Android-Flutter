import 'package:flutter/material.dart';

import 'Friends_page.dart';
import 'Home_page.dart';
import 'Star_page.dart';

class TabPage extends StatefulWidget {

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;

  late List _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePage(),
      FriendPage(),
      StarPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    print('tab_page created');
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        //BottomNavi item list
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Star',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        //selected된 item color
        selectedItemColor: Colors.black,
        //unselected된 item color
        unselectedItemColor: Colors.grey,
        //selected된 label text
        showSelectedLabels: false,
        //unselected된 label text
        showUnselectedLabels: false,
        //BottomNavigationBar Type -> fixed = bottom item size고정
        //BottomNavigationBar Type -> shifting = bottom item selected 된 item이 확대
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
