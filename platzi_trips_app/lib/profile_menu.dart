import 'package:flutter/material.dart';
import 'package:platzi_trips_app/button_icon.dart';

class ProfileMenu extends StatelessWidget{
  
  InkWell createButton (height, width, context, icon){
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:  Text("sonando"))
        );
      },
      child: Container(
        margin: EdgeInsets.only(top:30.0, left: 18.0, right: 20.0),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white54],
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

  @override
  Widget build(BuildContext context) {
    
    

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        createButton(30.0, 40.0, context, Icon(Icons.label_important_outline)),
        createButton(30.0, 40.0, context, Icon(Icons.live_tv_outlined)),
        createButton(40.0, 55.0, context, Icon(Icons.add)),
        createButton(30.0, 40.0, context, Icon(Icons.email)),
        createButton(30.0, 40.0, context, Icon(Icons.person))      
      ],
    );
  }


}