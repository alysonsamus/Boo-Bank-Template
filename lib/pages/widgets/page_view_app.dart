import 'package:flutter/material.dart';
import 'card_app.dart';
import 'first_card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  const PageViewApp(
      {Key? key,
        required this.top,
        required this.onChanged,
        required this.onPanUpdate, required this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _screenHeight;
    return AnimatedPositioned(
      duration: Duration(milliseconds: 170),
      curve: Curves.easeInOut,
      top: top,
      height: MediaQuery.of(context).size.height * .45,
      //width: MediaQuery.of(context).size.width,
      left: 0,
      right: 0,

      child: GestureDetector(
        onPanUpdate: onPanUpdate,
        child: PageView(
          onPageChanged: onChanged,
          physics: showMenu? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
          children: <Widget>[
            CardApp(child:FirstCard()),
            CardApp(child:FirstCard()),
            CardApp(child: FirstCard()),
          ],
        ),
      ),
    );
  }
}
