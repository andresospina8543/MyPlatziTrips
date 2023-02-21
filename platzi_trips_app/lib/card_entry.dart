import 'package:flutter/material.dart';

class CardEntry extends StatelessWidget{

  String pathImage = "";  
  String title ="";
  String description="";

  CardEntry(this.pathImage, this.title, this.description);

  Container createContainer(title, description){

    final box = Container(
      height: 100,
      width: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(margin: EdgeInsets.only(left: 10.0),
              child:  Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontFamily: "Lato",
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left
            ),
            ),
           
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                description,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontFamily: "Lato",
                ),
                textAlign: TextAlign.left
              ),
            )
          ],
        ),
      ),
      alignment: Alignment(-0.9, -0.6),
    );    

    return box;
  }

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 250.0,
      width: 400.0,
      margin: EdgeInsets.only(top: 80.0, left: 20.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow> [BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )]
      ),
    );



    return Stack(
      alignment: Alignment(0.00009,1.1),
      children: [
        card, 
        createContainer(title, description)
      ],      
    );

  }

}