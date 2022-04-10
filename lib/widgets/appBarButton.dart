import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData buttonIcon;
  final ActionButtion;
  final Color iconcolor;

  AppBarButton({required this.buttonIcon, this.ActionButtion,this.iconcolor =Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          shape: BoxShape.circle,
        ),
        child: IconButton(
            icon: Icon(
              buttonIcon,
              color: iconcolor,
              size: 20,
            ),
            onPressed: ActionButtion));
  }
}
