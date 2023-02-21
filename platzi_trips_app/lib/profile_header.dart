import 'package:flutter/material.dart';
import 'gradient_back.dart';

class ProfileHeader extends StatelessWidget{

  String pathImage = "";

  ProfileHeader(this.pathImage);

  @override
  Widget build(BuildContext context) {

    final photo = Container (
      margin: EdgeInsets.only(
        top: 150.0,
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

    final name = Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 170),
      child: Text("MariaHuana",
          style: TextStyle(
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.white70)),
    );

    final profileEmail = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text("marijuana@gmail.com",
          style: TextStyle(
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.grey)),
    );    

    final profileInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        name, profileEmail
      ],
    );

    final profileInfoRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        photo,
        //Expanded(child: profileInfo)
        profileInfo,         
      ],
    );

    final profileContainer = Stack(
      children: [
        Container(child: GradienteBack("Profile", 450)),
        profileInfoRow,
        ],
    );

    return Stack(
      children: [             
        profileContainer, 
      ],
    );
    
    
  }

}