import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/assets.dart';
import 'package:untitled/sections/StatusSection.dart';
import 'package:untitled/sections/StorySection.dart';
import 'package:untitled/sections/headerButtonSection.dart';
import 'package:untitled/sections/roomSection.dart';
import 'package:untitled/widgets/PostCard.dart';
import 'package:untitled/widgets/appBarButton.dart';
import 'package:untitled/widgets/headerButton.dart';
import 'package:untitled/widgets/storyCard.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget tnd(){
      return Divider(
        thickness: 1,
        color: Colors.grey[300],
      );
    }
    Widget tkd(){
      return Divider(
        thickness: 7,
        color: Colors.grey[300],
      );
    }
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Facebook",
          style: TextStyle(
              fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        actions: [
          AppBarButton(
            buttonIcon: Icons.search,
            ActionButtion: () {
              print("hello");
            },
          ),
          AppBarButton(
            buttonIcon: Icons.message,
            ActionButtion: () {
              print("hel");
            },
          ),
        ],
      ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              StatusSection(),
              tnd(),
              HeaderButtonSection(
                buttonOne: headerbutton(buttonText: "live", buttonIcon: Icons.video_call, buttoncolor: Colors.red), 
                buttonTwo:headerbutton(buttonText: "photos", buttonIcon: Icons.photo_library, buttoncolor: Colors.lightGreenAccent), 
                buttonThree:headerbutton(buttonText: "Room", buttonIcon: Icons.video_call, buttoncolor: Colors.purple) ,
              ),
              tkd(),
              RoomSection(),
              tkd(),
              StorySection(),
              tkd(),
              PostCard(
                name: "ann",
                avatar:p3,
                published: '5h',
                PostImage: pp3,
                PostTitle: "", shareCount: '10k', commentCount: '20k', likeCount: '30k',


              ),
              tnd(),
              HeaderButtonSection(
                buttonOne: headerbutton(buttonText: "like", buttonIcon: Icons.thumb_up, buttoncolor: Colors.grey),
                buttonTwo:headerbutton(buttonText: "Comments", buttonIcon: Icons.comment, buttoncolor: Colors.grey),
                buttonThree:headerbutton(buttonText: "Share", buttonIcon: Icons.share, buttoncolor: Colors.grey) ,
              ),
              tkd(),
              PostCard(
                name: "shan",
                avatar:p2,
                published: '6h',
                PostImage: pp5,
                PostTitle: "", shareCount: '10k', commentCount: '20k', likeCount: '30k',


              ),
              tnd(),
              HeaderButtonSection(
                buttonOne: headerbutton(buttonText: "like", buttonIcon: Icons.thumb_up, buttoncolor: Colors.grey),
                buttonTwo:headerbutton(buttonText: "Comments", buttonIcon: Icons.comment, buttoncolor: Colors.grey),
                buttonThree:headerbutton(buttonText: "Share", buttonIcon: Icons.share, buttoncolor: Colors.grey) ,
              ),
              tkd(),



            ],
          ),
    ));
  }
}
