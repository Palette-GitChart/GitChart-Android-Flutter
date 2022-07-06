import 'package:flutter/material.dart';

class StarPage extends StatelessWidget {
  const StarPage({Key? key}) : super(key: key);

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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildStarContainer() {
    return Container(
      width: 320,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: FlatButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 220,
                    child: Text('swift-api-design-guidelines',
                        style: TextStyle(
                            fontFamily: 'NotoSans',
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(height: 7),
                  Container(
                    width: 220,
                    child: Text('junbum9416 - Flutter',
                        style: TextStyle(
                          fontFamily: 'NotoSans',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffA7A7A7),
                        )),
                  ),
                ],
              ),
              Container(
                height: 40,
                width: 40,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xffC4C4C4),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStar() {
    return Container(
      width: 320,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Star',
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
