import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

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
                    SizedBox(height: 65),
                    buildHome(),
                    SizedBox(height: 15),
                    buildProfile(),
                    SizedBox(height: 15),
                    Container(
                      width: 320,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildTodayCommit(),
                          buildWeekCommit(),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    buildDaliyCommitGoal(),
                    SizedBox(height: 15),
                    buildCommitTrend(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCommitTrend() {
    return Container(
      width: 320,
      height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text('Commit Trend',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            Container(
              width: 290,
              height: 160,
              color: Color(0xffF5F5F5),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('2022-01-01',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    )),
                Text('2021-05-11',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDaliyCommitGoal() {
    return Container(
      width: 320,
      height: 105,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text('Daily Commit Goal',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            SizedBox(height: 13),
            Container(
              width: 290,
              height: 15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xffF5F5F5)),
            ),
            SizedBox(height: 13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('0개',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    )),
                Text('18개',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildWeekCommit() {
    return Container(
      width: 155,
      height: 135,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text('Week Commit',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTodayCommit() {
    return Container(
      width: 155,
      height: 135,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text('Today Commit',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfile() {
    return Container(
      width: 320,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xffC4C4C4),
              ),
            ),
            SizedBox(width: 13),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 190,
                  child: Text('junbum9416',
                      style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 24,
                          fontWeight: FontWeight.w600)),
                ),
                Container(
                  width: 190,
                  child: Text('팔로워 24 | 팔로우 24',
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffA7A7A7),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHome() {
    return Container(
      width: 320,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Home',
              style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: Color(0xff67C58E),
              )),
        ],
      ),
    );
  }
}
