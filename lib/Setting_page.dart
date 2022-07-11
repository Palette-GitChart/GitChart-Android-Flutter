import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  static final double _cornerRadius = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: 63),
                  buildSettings(),
                  SizedBox(height: 15),
                  buildProfile(),
                  SizedBox(height: 15),
                  buildChangeID(),
                  SizedBox(height: 15),
                  buildChangeCommitGoal(),
                  SizedBox(height: 15),
                  buildDeveloper(),
                  SizedBox(height: 15),
                  buildOpenSource(),
                  SizedBox(height: 15),
                  buildInquiry(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInquiry() {
    return Container(
      width: 320,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: FlatButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "문의하기",
              style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffC6C6C6)),
            ),
            Icon(
              Icons.chevron_right,
              color: Color(0xff67C58E),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOpenSource() {
    return Container(
      width: 320,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: FlatButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "오픈소스",
              style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffC6C6C6)),
            ),
            Icon(
              Icons.chevron_right,
              color: Color(0xff67C58E),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDeveloper() {
    return Container(
      width: 320,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: FlatButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "개발자 소개",
              style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffC6C6C6)),
            ),
            Icon(
              Icons.chevron_right,
              color: Color(0xff67C58E),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChangeCommitGoal() {
    return Container(
      width: 320,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: FlatButton(
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext ctx) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AlertDialog(
                    content: Column(
                      children: [
                        Text(
                          '일일 커밋 목표 수정',
                          style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff000000)),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '자신이 원하는 목표를 입력하세요',
                          style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000)),
                        ),
                        SizedBox(height: 8),
                        TextFormField(
                          cursorColor: Color(0xff67C58E),
                          validator: (text) {},
                          style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000)),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "커밋 개수를 입력하세요",
                            hintStyle: TextStyle(
                                fontFamily: 'NotoSans',
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0x4D3C3C34)),
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton(
                              onPressed: () {},
                              child: Text(
                                '확인',
                                style: TextStyle(
                                    fontFamily: 'NotoSans',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff67C58E)),
                              )),
                          FlatButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                '취소',
                                style: TextStyle(
                                    fontFamily: 'NotoSans',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFF6767)),
                              )),
                        ],
                      ),
                    ],
                    backgroundColor: Color(0xCCF2F2F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "일일 커밋 목표 수정하기",
              style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffC6C6C6)),
            ),
            Icon(
              Icons.chevron_right,
              color: Color(0xff67C58E),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChangeID() {
    return Container(
      width: 320,
      height: 50,
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
                      "Github 아이디를 입력해주세요.",
                      style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff67C58E)),
                    ),
                    SizedBox(height: 45),
                    TextFormField(
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
                    SizedBox(height: 370),
                    Container(
                        width: 300,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xffC4C4C4)),
                        child: FlatButton(onPressed: () {}, child: Text("완료"))),
                  ],
                ),
              );
            },
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Github 아이디 변경",
              style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffC6C6C6)),
            ),
            Icon(
              Icons.chevron_right,
              color: Color(0xff67C58E),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfile() {
    return Container(
      width: 320,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: FlatButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xffC4C4C4),
                ),
              ),
              SizedBox(width: 12),
              Row(
                children: [
                  Text('junbum9416',
                      style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 18,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSettings() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Settings',
            style: TextStyle(
              fontFamily: 'NotoSans',
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Color(0xff626262),
            )),
      ],
    );
  }
}
