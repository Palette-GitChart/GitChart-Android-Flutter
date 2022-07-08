import 'package:flutter/material.dart';

class InFriendsPage extends StatelessWidget {
  const InFriendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 25),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  buildProfile(),
                  SizedBox(height: 30),
                  buildName(),
                  SizedBox(height: 5),
                  buildFollowerFollow(),
                  SizedBox(height: 30),
                  buildTodayCommit(),
                  SizedBox(height: 15),
                  buildYearCommit(),
                  SizedBox(height: 105),
                  buildWebButton()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildWebButton() {
    return FlatButton(
      onPressed: () {},
      child: Container(
          width: 320,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xffC4C4C4)),
          child: FlatButton(onPressed: () {}, child: Text("Web에서 보기"))),
    );
  }

  Widget buildYearCommit() {
    return Container(
      height: 135,
      width: 320,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
    );
  }

  Widget buildTodayCommit() {
    return Container(
      height: 135,
      width: 320,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
    );
  }

  Widget buildFollowerFollow() {
    return Container(
      width: 190,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('팔로워 12명',
              style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 15,
                  fontWeight: FontWeight.w500)),
          Text('팔로우 23명',
              style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 15,
                  fontWeight: FontWeight.w500))
        ],
      ),
    );
  }

  Widget buildName() {
    return Text('junbeom9416',
        style: TextStyle(
            fontFamily: 'NotoSans', fontSize: 30, fontWeight: FontWeight.w500));
  }

  Widget buildProfile() {
    return Container(
      height: 100,
      width: 100,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Color(0xffC4C4C4),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leadingWidth: 100,
      leading: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Color(0xff67C58E),
            icon: Icon(Icons.chevron_left),
          ),
          Text('Friends',
              style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff67C58E),
              )),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            color: Color(0xffff3b30),
            icon: Icon(Icons.delete)),
      ],
      elevation: 0,
    );
  }
}
