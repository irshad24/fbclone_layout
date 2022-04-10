

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets.dart';

class Avatar extends StatelessWidget {

  final String displayimage;
  late final bool displayStatus;
  final double width;
  final double height;
  Avatar({
    required this.displayimage,
    required this.displayStatus,
    this.width =50,
    this.height=50,
});

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;
    if(displayStatus==true){
      statusIndicator=Positioned(
          bottom: 0,
          right: 1,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                )

            ),
          ));
    }
    else{
      statusIndicator=SizedBox();
      }

    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 4,right: 4),
           child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(displayimage,height: height,width: width,fit:BoxFit.cover,),
            )
        ),
        statusIndicator
      ],
    );
  }
}
