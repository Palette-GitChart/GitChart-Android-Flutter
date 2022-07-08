import 'package:flutter/material.dart';

import 'In_friends_page.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Container(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height: 63),
                    buildFriends(),
                    SizedBox(height: 15),
                    buildFriendContainer(),
                    SizedBox(height: 15),
                    buildFriendContainer(),
                    SizedBox(height: 15),
                    buildFriendContainer(),
                    SizedBox(height: 15),
                    buildFriendContainer(),
                    SizedBox(height: 15),
                    buildFriendContainer(),
                    SizedBox(height: 15),
                    buildFriendContainer(),
                    SizedBox(height: 15),
                    buildFriendContainer(),
                    SizedBox(height: 15),
                    buildFriendContainer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFriendContainer() {
    return Container(
      width: 320,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InFriendsPage()),
          );
        },
        child: Padding(
          padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xffC4C4C4),
                ),
              ),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('junbum9416',
                      style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFriends() {
    return Container(
      width: 320,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Friends',
              style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: Color(0xff626262),
              )),
        ],
      ),
    );
  }
}
