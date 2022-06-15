import 'package:flutter/material.dart';

class StarPage extends StatelessWidget {
  const StarPage({Key? key}) : super(key: key);

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
                buildStar(),
                SizedBox(height: 15),
                buildStarContainer(),
                SizedBox(height: 15),
                buildStarContainer(),
                SizedBox(height: 15),
                buildStarContainer(),
                SizedBox(height: 15),
                buildStarContainer(),
                SizedBox(height: 15),
                buildStarContainer(),
                SizedBox(height: 15),
                buildStarContainer(),
                SizedBox(height: 15),
                buildStarContainer(),
                SizedBox(height: 15),
                buildStarContainer(),
                SizedBox(height: 15),
                buildStarContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildStarContainer() {
    return Container(
      width: 300,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: FlatButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('green-green-android',
                        style: TextStyle(
                            fontFamily: 'NotoSans',
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: 6),
                    Text('junbum9416 - Flutter',
                        style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffA7A7A7),
                        )),
                  ],
                ),
                SizedBox(width: 15),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xffC4C4C4),
                ),
                SizedBox(width: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row buildStar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Star',
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

