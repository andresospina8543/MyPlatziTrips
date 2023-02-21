import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/img/tayrona3.jpg"),
          CardImage("assets/img/tayrona2.jpg"),
          CardImage("assets/img/Tayrona-scaled.jpg"),
          CardImage("assets/img/tayrona1.jpg"),
          CardImage("assets/img/Tayrona-colombia-10.jpg"),
        ],
      ),
    );
  }

}