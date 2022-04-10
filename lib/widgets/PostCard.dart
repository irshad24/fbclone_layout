import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/sections/headerButtonSection.dart';
import 'package:untitled/widgets/avatar.dart';

import '../assets.dart';

class PostCard extends StatelessWidget {
  late final String avatar;
  late final String name;
  final String published;
  final String PostTitle;
  final String PostImage;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  PostCard({
    required this.name,
    required this.avatar,
    required this.published,
    required this.PostTitle,
    required this.PostImage,
    required this.commentCount,
    required this.likeCount,
    required this.shareCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Postcardheader(),
          titleSection(),
          Post(),
          footerSection(),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.thumb_up,
              color: Colors.grey[700],
              size: 10,
            ),
          ),
          Text(likeCount + " Likes"),
          SizedBox(
            width: 130,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  commentCount + " comments",
                ),
                Text(
                  shareCount + " shares",
                ),
                Avatar(
                  displayimage: p1,
                  displayStatus: false,
                  width: 20,
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget Post() {
    return Container(
      child: Image.asset(
        PostImage,
        fit: BoxFit.fitWidth,
      ),
      height: 250,
    );
  }

  Widget titleSection() {
    return PostTitle != null && PostTitle != "" ? Container(
      child: Text(
        PostTitle,
        textAlign: TextAlign.center,
      ),
      padding: EdgeInsets.only(bottom: 15),
    ): SizedBox();
  }

  Widget Postcardheader() {
    return ListTile(
      leading: Avatar(
        displayStatus: true,
        displayimage: avatar,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
      subtitle: Row(
        children: [
          Text(published),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {
            print("helli");
          },
          icon: Icon(Icons.more_horiz)),
    );
  }
}
