import 'package:flutter/material.dart';

class InStarPage extends StatelessWidget {
  const InStarPage({Key? key}) : super(key: key);

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
                  SizedBox(height: 42),
                  buildTopic(),
                  SizedBox(height: 5),
                  buildExplanation(),
                  SizedBox(height: 8),
                  buildForkWatch(),
                  SizedBox(height: 390),
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

  Widget buildForkWatch() {
    return Container(
      width: 190,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Fork 12',
              style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0x9C000000),
              )),
          Text('Watch 2,123',
              style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0x9C000000),
              ))
        ],
      ),
    );
  }

  Widget buildExplanation() {
    return Text('A flexible grid layout view for SwiftUI',
        style: TextStyle(
          fontFamily: 'NotoSans',
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: Color(0x9C000000),
        ));
  }

  Widget buildTopic() {
    return Text('swift-api-design-guidelines',
        style: TextStyle(
          fontFamily: 'NotoSans',
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Color(0x9C8071DA),
        ));
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
          Text('Star',
              style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff67C58E),
              )),
        ],
      ),
      elevation: 0,
    );
  }
}
