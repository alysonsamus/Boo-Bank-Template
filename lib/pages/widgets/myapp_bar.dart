import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {

  final bool showMenu;
  final VoidCallback onTap;

  const MyAppBar({Key? key, required this.showMenu, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            color: Colors.purple[800],
            height: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                        'https://logospng.org/download/nubank/logo-nubank-roxo-4096.png',
                        height: 80,
                        color: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Samus',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                Icon(!showMenu ? Icons.expand_more : Icons.expand_less),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
