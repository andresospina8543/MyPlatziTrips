import 'package:flutter/material.dart';
import 'favorite_band.dart';

class ListaFavoriteBands extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    final list = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FavoriteBand("assets/img/foo.jpg", "Foo Fighters", "Hard rock"),
        FavoriteBand("assets/img/blink.jpg", "Blink 182", "Punk rock"),
        FavoriteBand("assets/img/green.jpg", "Green Day", "Punk rock"),
        FavoriteBand("assets/img/breaking.jpg", "Breaking Benjamin", "Hard rock, nu-Metal"),
        FavoriteBand("assets/img/cold.jpeg", "Coldplay", "Rock-pop"),
        FavoriteBand("assets/img/redhot.jpg", "Red hot chilipeppers", "Funk-rock"),
        FavoriteBand("assets/img/lag.jpg", "Lagwagon", "Punk rock"),
        FavoriteBand("assets/img/trapt.jpeg", "Trapt", "Hard rock"),
      ],
    );
    return list;
  }


} 