import 'package:flutter/material.dart';
import 'profile_header.dart';
import 'profile_menu.dart';
import 'card_entry_list.dart';

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProfileHeader("assets/img/portada-foto-perfil-redes-sociales-consejos.jpg"),
        Container(
          margin:EdgeInsets.only(top:220),
          child: ProfileMenu(),
        ),
        CardEntryList()
      ],
    );
  }


}