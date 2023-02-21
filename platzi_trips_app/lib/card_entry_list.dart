import 'package:flutter/material.dart';
import 'card_entry.dart';

class CardEntryList extends StatelessWidget{
  
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      margin: EdgeInsets.only(top: 300.0, bottom: 30),      
      child: ListView(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.vertical,
        children: [          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardEntry("assets/img/tayrona3.jpg", "Viaje Largo a la costa", "Una carreta para llenar texto que puede significar lo que sea"),
              CardEntry("assets/img/tayrona2.jpg", "Otro viaje", "Una carreta para llenar texto que puede significar lo que sea"),
              CardEntry("assets/img/tayrona1.jpg", "El ultimo", "Una carreta para llenar texto que puede significar lo que sea"),
            ],)          
          ],
      ),
    );
  }

}