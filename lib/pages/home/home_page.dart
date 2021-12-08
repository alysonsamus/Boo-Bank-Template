import 'package:boobank/pages/widgets/bottom_menu_app.dart';
import 'package:boobank/pages/widgets/menu_app.dart';
import 'package:boobank/pages/widgets/my_dots_app.dart';
import 'package:boobank/pages/widgets/myapp_bar.dart';
import 'package:boobank/pages/widgets/page_view_app.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  bool _showMenu = false;
  int _currentIndex = 0;
  double _positionY = 0;


  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }


  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
                _positionY =
                _showMenu ? _screenHeight * .75 : _screenHeight * .24;
              });
            },
          ),
          MenuApp(
            top: _screenHeight * .22,
            showMenu: _showMenu,
          ),
          BottomMenuApp(showMenu: _showMenu),
          MyDotsApp(
            showMenu: _showMenu,
            top: _screenHeight * .70,
            currentIndex: _currentIndex,
          ),
          PageViewApp(
            showMenu: _showMenu,
            top: _positionY,
            //!_showMenu ? _screenHeight * .24 : _screenHeight * .75,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            onPanUpdate: (details) {
              double positionBottomLimit = _screenHeight * .80;
              double positionTopLimit = _screenHeight * .24;
              double midlePosition = positionBottomLimit - positionTopLimit;
              midlePosition = midlePosition / 2;

              setState(() {
                _positionY += details.delta.dy;

                _positionY = _positionY < positionTopLimit
                    ? positionTopLimit
                    : _positionY;

                _positionY = _positionY > positionBottomLimit
                    ? positionBottomLimit
                    : _positionY;

                if (_positionY != positionBottomLimit && details.delta.dy > 0) {
                  _positionY =
                  _positionY > positionTopLimit + midlePosition - 50
                      ? positionBottomLimit
                      : _positionY;
                }

                if (_positionY != positionTopLimit && details.delta.dy < 0) {
                  _positionY = _positionY < positionBottomLimit - midlePosition
                      ? positionTopLimit
                      : _positionY;
                }

                if (_positionY == positionBottomLimit) {
                  _showMenu = true;
                } else if (_positionY == positionTopLimit) {
                  _showMenu = false;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}


