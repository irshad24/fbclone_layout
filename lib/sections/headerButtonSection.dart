import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  final Widget  buttonOne;
  final Widget  buttonTwo;
  final Widget  buttonThree;
  HeaderButtonSection({
    required this.buttonOne,
    required this.buttonThree,
    required this.buttonTwo,
});




    @override
    Widget build(BuildContext context) {
    Widget vd =VerticalDivider(
        thickness: 2,
        color: Colors.grey[300],
    );
      return Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonOne,
            vd ,
            buttonTwo,

            vd,
            buttonThree,


          ],
        ),
      );
    }
  }

