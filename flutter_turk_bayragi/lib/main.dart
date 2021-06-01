import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "TÜRKİYE BAYRAĞI",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SafeArea(
          child: StackBayrak(g: 250),
        ),
      ),
    );
  }
}

class StackBayrak extends StatelessWidget {
  double g;
  StackBayrak({this.g});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: g,
        width: g * 1.5,
        child: Stack(
          children: <Widget>[
            Container(color: Colors.red),
            Positioned(
              left: g * 0.25,
              top: g * 0.25,
              child: Container(
                width: g * 0.5,
                height: g * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(g * 0.5),
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: g * 0.3,
              left: g * 0.3625,
              child: Container(
                width: g * 0.4,
                height: g * 0.4,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(g * 0.4)),
              ),
            ),
            Positioned(
              left: g * 0.7,
              top: g * 0.375,
              child: Transform.rotate(
                angle: 90,
                child: Icon(
                  Icons.star,
                  size: g * 0.25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget kirmiziarkaplan = Container(
  color: Colors.blue,
);
Widget beyazdaire = Container();
Widget kirmizidaire = Container(
  color: Colors.red,
  height: 50,
  width: 50,
);
Widget yildiz = Transform.rotate(
  angle: 90,
  child: Icon(
    Icons.star,
    size: 30,
    color: Colors.white,
  ),
);
