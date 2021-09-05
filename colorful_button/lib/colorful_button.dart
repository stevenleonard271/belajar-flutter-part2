import 'package:flutter/material.dart';
import 'dart:math';

class ColorfulButton extends StatefulWidget {
  Color mainColor = Colors.pink, secondColor = Colors.blue;
  IconData iconData= Icons.comment ;
  ColorfulButton(this.mainColor, this.secondColor, this.iconData);
  // const ColorfulButton({Key? key}) : super(key: key);

  @override
  _ColorfulButtonState createState() =>
      _ColorfulButtonState(mainColor, secondColor, iconData);
}

class _ColorfulButtonState extends State<ColorfulButton> {
  Color mainColor = Colors.pink, secondColor = Colors.blue;
  bool isPressed = false;
  IconData iconData;

  _ColorfulButtonState(this.mainColor, this.secondColor, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapUp: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapCancel: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: (isPressed) ? 5 : 10,
          shadowColor: (isPressed) ? secondColor : mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Material(
                    color: (isPressed) ? secondColor : mainColor,
                    borderRadius: BorderRadius.circular(15),
                    child: Transform.rotate(
                      angle: -pi / 4,
                      child: Icon(
                        iconData,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, 30),
                  child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Material(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(25))),
                ),
                Transform.translate(
                  offset: Offset(-30, 30),
                  child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Material(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(25))),
                ),
                Transform.translate(
                  offset: Offset(30, -30),
                  child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Material(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(25))),
                ),
                Transform.translate(
                  offset: Offset(-30, -30),
                  child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Material(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(25))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
