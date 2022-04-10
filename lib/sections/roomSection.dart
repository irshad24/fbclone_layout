import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/assets.dart';
import 'package:untitled/widgets/avatar.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [

          createRoomButton(),
          Avatar(displayimage: p1,displayStatus: true),
          Avatar(displayimage: p2,displayStatus: true),
          Avatar(displayimage: p3,displayStatus: true),
          Avatar(displayimage: p4,displayStatus: true),
          Avatar(displayimage: p5,displayStatus: true),
          Avatar(displayimage: p6,displayStatus: true),

        ],
      ),
    );
  }
  Widget createRoomButton(){
    return Container(
      padding: EdgeInsets.only(right: 5,top: 3),
      child: OutlineButton.icon(
          borderSide: BorderSide(color: Colors.lightBlueAccent),
          shape: StadiumBorder(
          ),
          onPressed: () {},
          icon: Icon(
            Icons.video_call,
            color: Colors.purple,
          ),
          label: Text("Create \n Room")),
    );
  }
}
