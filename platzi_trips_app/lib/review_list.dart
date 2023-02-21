import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    final list = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/portada-foto-perfil-redes-sociales-consejos.jpg", "Juliana", "1 review 5 photos", "There is an amazing place"),
        Review("assets/img/perfil2.png", "Mariana", "3 review 10 photos", "I liked"),
        Review("assets/img/perfil3.png", "Ironman", "10 review 25 photos", "Fuck"),
      ],
    );
    return list;
  }

}