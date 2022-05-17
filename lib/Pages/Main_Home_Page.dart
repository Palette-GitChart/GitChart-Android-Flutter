import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(height: 32),
            buildHome(),
            SizedBox(height: 17),
            buildProfile(),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTodayCommit(),
                SizedBox(width: 10),
                buildYearCommit(),
              ],
            ),
            SizedBox(height: 15),
            buildDaliyCommitGoal(),
            SizedBox(height: 15),
            buildCommitTrend(),
            SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }

  Container buildCommitTrend() {
    return Container(
            width: 300,
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text('Commit Trend',
                        style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        )),
                  ],
                ),
                SizedBox(height: 126.34), //그래프
                SizedBox(height: 4.66),
                Row(
                  children: [
                    SizedBox(width: 17),
                    Text('2022-01-01',
                        style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(width: 164),
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
          );
  }

  Container buildDaliyCommitGoal() {
    return Container(
            width: 300,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text('Daily Commit Goal',
                        style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        )),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(height: 18), //그래프
                Row(
                  children: [
                    SizedBox(width: 17),
                    Text('0개',
                        style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(width: 226),
                    Text('18개',
                        style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
              ],
            ),
          );
  }

  Container buildYearCommit() {
    return Container(
                width: 145,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Text('Year Commit',
                            style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                  ],
                ),
              );
  }

  Container buildTodayCommit() {
    return Container(
                width: 145,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Text('Today Commit',
                            style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                  ],
                ),
              );
  }

  Container buildProfile() {
    return Container(
            width: 300,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white),
            child: Row(
              children: [
                SizedBox(width: 15),
                CircleAvatar(
                  radius: 35,
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
          );
  }

  Row buildHome() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Home',
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
