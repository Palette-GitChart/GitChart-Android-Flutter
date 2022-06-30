import 'package:flutter/material.dart';

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
                buildAddFriends(),
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
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            builder: (BuildContext context) {
              return Container(
                height: 585, // 모달 높이 크기
                decoration: BoxDecoration(
                    color: Colors.white, // 모달 배경색
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    )),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 30),
                    Text(
                      "친구의 Github 아이디를 입력해주세요.",
                      style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff67C58E)),
                    ),
                    SizedBox(height: 45),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        validator: (text) {},
                        style: TextStyle(
                            fontFamily: 'NotoSans',
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffCBCBCB)),
                          ),
                          hintText: "Github 아이디를 입력해주세요.",
                          hintStyle: TextStyle(
                              fontFamily: 'NotoSans',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffCBCBCB)),
                        ),
                      ),
                    ),
                    SizedBox(height: 370),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 30,
                          right: 30,
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Container(
                          width: 300,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xffC4C4C4)),
                          child:
                              FlatButton(onPressed: () {}, child: Text("완료"))),
                    )
                  ],
                ),
              );
            },
          );
        },
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
                Text('junbum9416',
                    style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 22,
                        fontWeight: FontWeight.w500)),
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
