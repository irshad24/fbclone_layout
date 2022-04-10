

import 'package:flutter/cupertino.dart';
import 'package:untitled/assets.dart';
import 'package:untitled/sections/StatusSection.dart';
import 'package:untitled/widgets/storyCard.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
        StoryCard(LabelText: "ADD TO YOUR STORY", Story: p1, avatar: pp1 ),
          StoryCard(LabelText: "p1", Story: pp2, avatar: p2 ,createStoryStatus: false,),
          StoryCard(LabelText: "p2", Story: pp3, avatar: p3 ,createStoryStatus: false,),
          StoryCard(LabelText: "p1", Story: pp4, avatar: p4 ,createStoryStatus: false,),
          StoryCard(LabelText: "p2", Story: pp5, avatar: p5,createStoryStatus: false, ),
          StoryCard(LabelText: "p1", Story: pp6, avatar: p6 ,createStoryStatus: false,),



        ],
      ),
    );
  }
}
