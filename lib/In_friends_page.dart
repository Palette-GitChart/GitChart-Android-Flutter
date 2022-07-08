import 'package:flutter/material.dart';

class InFriendsPage extends StatelessWidget {
  const InFriendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                  buildFollow(),
                  SizedBox(height: 30),
                  buildTodayCommit(),
                  SizedBox(height: 15),
                  buildYearCommit(),
                  SizedBox(height: 15),
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

  Widget buildFollow() {
    return Row(
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
}
