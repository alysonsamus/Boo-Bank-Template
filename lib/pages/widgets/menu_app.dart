import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'item_menu.dart';

class MenuApp extends StatelessWidget {
  const MenuApp({Key? key, required this.top, required this.showMenu})
      : super(key: key);

  final double top;
  final bool showMenu;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 150),
        opacity: showMenu ? 1 : 0,
        child: Container(
          color: Colors.purple[800],
          height: MediaQuery.of(context).size.height * .8,
          child: Column(
            children: <Widget>[
              Image.network(
                'https://pngimg.com/uploads/qr_code/qr_code_PNG40.png',
                height: 100,
                color: Colors.white,
              ),
              SizedBox(
                height: 15,
              ),
              Text.rich(
                TextSpan(
                  text: 'Banco:',
                  children: [
                    TextSpan(
                        text: '260 - NU Pagamentos S.A',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                style: TextStyle(fontSize: 13),
              ),
              Text.rich(
                TextSpan(
                  text: 'Agencia:',
                  children: [
                    TextSpan(
                        text: ' 0001 ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                style: TextStyle(fontSize: 13),
              ),
              Text.rich(
                TextSpan(
                  text: 'Conta:',
                  children: [
                    TextSpan(
                        text: ' 0005630056 ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: <Widget>[
                      ItemMenu(icon: Icons.info_outline, text: 'Me Ajuda'),
                      ItemMenu(icon: Icons.person_outline, text: 'Perfil'),
                      ItemMenu(icon: Icons.settings, text: 'Configurar Conta'),
                      ItemMenu(
                          icon: Icons.credit_card, text: 'Configurar Cartão'),
                      ItemMenu(
                          icon: Icons.store_mall_directory,
                          text: 'Pedir conta PJ'),
                      ItemMenu(
                          icon: Icons.phone_android,
                          text: 'Configurações do App'),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border:
                            Border.all(width: 0.7, color: Colors.white54)),
                        child: RaisedButton(
                          color: Colors.purple[800],
                          highlightColor: Colors.transparent,
                          splashColor: Colors.purple[900],
                          disabledElevation: 0,
                          highlightElevation: 0,
                          hoverElevation: 0,
                          elevation: 0,
                          child: Text('SAIR DO APP',style: TextStyle(fontWeight: FontWeight.bold),),
                          onPressed: () => Get.toNamed('/http'),

                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
