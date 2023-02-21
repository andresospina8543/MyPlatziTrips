import 'package:flutter/material.dart';
import 'button_icon.dart';

class FavoriteBand extends StatelessWidget{
  
  String pathImage = "assetes/img/foo.jpg";
  String name = "Foo Fighters";
  String type = "Hard Rock";

  FavoriteBand(this.pathImage, this.name, this.type);

  @override
  Widget build(BuildContext context) {
    
    Icon playIcon = Icon(Icons.play_arrow_rounded);

    final buttonPlay = Container(
      margin: EdgeInsets.only(right: 10),
      child: ButtonIcon(playIcon, 30.0, 40.0),
    );

    final nameBand = Container(
      margin: EdgeInsets.only(
        left: 20
      ),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 22
        ),
        ),
    );

    final typeBand = Container(
      margin: EdgeInsets.only(
        left: 18
      ),
      child: Text(
        type,
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey
        )
        ),
    
    );

    final bandDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        nameBand,
        typeBand
      ],
    );
    
    final photo = Container (
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage)
        )
      ),

    );

    final dataBand = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[        
        bandDetails
      ],
    ); 

    return Row(
       crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        photo,
        Expanded(child: dataBand), 
        buttonPlay
      ],
    );
  }

}