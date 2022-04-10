import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/assets.dart';
import 'package:untitled/widgets/appBarButton.dart';

import 'avatar.dart';


class StoryCard extends StatelessWidget {

  final String LabelText;
  final String Story;
  final String avatar;
  final bool createStoryStatus;

  StoryCard({
    required this.LabelText,
    required this.Story,
    required this.avatar,
    this.createStoryStatus = true,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 5,
        right: 5,

      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 5,
              child: createStoryStatus ? AppBarButton(
                iconcolor: Colors.lightBlueAccent,
                buttonIcon: Icons.add, ActionButtion: () {
                print("create new story");
              },) : Avatar(
                displayimage: avatar,
                displayStatus:false,
              )

          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(LabelText, style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),))
        ],
      ),);
  }
}
