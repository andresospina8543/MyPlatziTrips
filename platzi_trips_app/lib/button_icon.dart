import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

class ButtonIcon extends StatelessWidget{
  
  Icon icon = Icon(Icons.play_arrow_rounded);
  double height = 10;
  double width = 40;

  ButtonIcon(this.icon, this.height, this.width);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:  Text("sonando"))
        );
      },
      child: Container(
        margin: EdgeInsets.only(top:30.0, left: 20.0, right: 20.0),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [Color(0xFF4268D3), Color(0xFF584cd1)],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6), 
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
          )
        ),
        child: icon
      ),
    );
  }

}