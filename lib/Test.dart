import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int current_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('NaviSwipe'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          //현재 index 변수에 저장
          currentIndex: current_index,
          //tap -> index 변경
          onTap: (index) {
            print('index test : ${index}');
            setState(() {
              current_index = index;
            });
          },
          //BottomNavi item list
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: 'Music',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: 'Apps',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          //selected된 item color
          selectedItemColor: Colors.red,
          //unselected된 item color
          unselectedItemColor: Colors.grey,
          //unselected된 label text
          showUnselectedLabels: true,
          //BottomNavigationBar Type -> fixed = bottom item size고정
          //BottomNavigationBar Type -> shifting = bottom item selected 된 item이 확대
          type: BottomNavigationBarType.shifting,
        ),

        //List item index로 Body 변경
        body: Center(
          child: body_item.elementAt(current_index),
        ));
  }

  List body_item = [
    Text("home"),
    Text("music"),
    Text("apps"),
    Text("settings"),
  ];
}
