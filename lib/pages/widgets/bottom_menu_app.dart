import 'package:flutter/material.dart';

import 'item_menu_bottom.dart';

class BottomMenuApp extends StatelessWidget {

  final bool showMenu;


  const BottomMenuApp({Key? key, required this.showMenu}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return AnimatedPositioned(
      bottom: !showMenu ? MediaQuery.of(context).padding.bottom : -200,
      left: 0,
      right: 0,
      height: MediaQuery.of(context).size.height*.14,

      duration: Duration(milliseconds: 200),
      child: Container(
        height: 100,
        color: Colors.purple[800],
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          children: <Widget>[

            ItemMenuBottom(
              icon: Icons.person_add,
              text: 'Adicionar Amigos',
            ),
            ItemMenuBottom(
              icon: Icons.phone_android,
              text: 'Recarga de Celular',
            ),
            ItemMenuBottom(
              icon: Icons.chat,
              text: 'Cobrar',
            ),
            ItemMenuBottom(
              icon: Icons.monetization_on,
              text: 'Emprestar',
            ),
            ItemMenuBottom(
              icon: Icons.move_to_inbox,
              text: 'Depositar',
            ),
            ItemMenuBottom(
              icon: Icons.mobile_screen_share,
              text: 'Transferir',
            ),
            ItemMenuBottom(
              icon: Icons.block,
              text: 'Bloquear',
            ),
          ],
        ),
      ),
    );
  }
}
