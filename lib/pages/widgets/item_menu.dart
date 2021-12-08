import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemMenu({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.7, color: Colors.white38),
          top: BorderSide(width: 0.7, color: Colors.white38),
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
          ElevatedButton.styleFrom(primary: Colors.purple[900]);
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.purple[800],
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    text,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              Icon(Icons.chevron_right, size: 16)
            ]),
      ),
    );
  }
}
