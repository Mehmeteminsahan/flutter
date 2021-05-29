import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Widget child;
  final Function onPress;
  final Color color;
  final double margin;

  MyContainer(
      {this.color = Colors.white, this.child, this.onPress, this.margin = 12});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(margin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        padding: EdgeInsets.all(10),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
