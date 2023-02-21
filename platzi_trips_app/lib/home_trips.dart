import 'package:flutter/material.dart';
import 'description_place.dart';
import 'list_favorite_bands.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    return Stack(
          children: [
            ListView(
              children: [
                DescriptionPlace("Bahamas", 4, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s..." ),
                //ReviewList()
                ListaFavoriteBands()
              ],
            ),
            HeaderAppBar()
            ],
        );
  }

}