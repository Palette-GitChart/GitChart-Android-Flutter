import 'package:flutter/material.dart';

class FriendPage extends StatelessWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Container(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
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
                SizedBox(height: 15),
                buildAddFriends()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildAddFriends() {
    return Container(
      width: 300,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: FlatButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle_outline,
              color: Color(0xff7fc567),
            ),
            SizedBox(width: 8.5),
            Text(
              "Add Friends",
              style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff7fc567)),
            )
          ],
        ),
      ),
    );
  }

  Container buildFriendContainer() {
    return Container(
      width: 300,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: FlatButton(
        onPressed: () {},
        child: Row(
          children: [
            SizedBox(width: 15),
            CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xffC4C4C4),
            ),
            SizedBox(width: 12),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('junbum9416',
                        style: TextStyle(
                            fontFamily: 'NotoSans',
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                    SizedBox(height: 6),
                    Text('팔로워 24 | 팔로우 24',
                        style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffA7A7A7),
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row buildFriends() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Friends',
            style: TextStyle(
              fontFamily: 'NotoSans',
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Color(0xff67C58E),
            )),
      ],
    );
  }
}
