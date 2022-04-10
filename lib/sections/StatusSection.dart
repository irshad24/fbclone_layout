import 'package:flutter/material.dart';
import 'package:untitled/widgets/avatar.dart';

import '../assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayimage: p1,displayStatus: false,),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's On Your Mind  ",

          hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, ),
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,

        ),
      ),
    );
  }
}
