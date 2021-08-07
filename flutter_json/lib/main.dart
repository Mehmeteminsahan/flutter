import 'package:flutter/material.dart';

import 'http_api.dart';
import 'local_json.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json ve Api"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              child: Text("Local Json"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LocalJsonKullanimi()));
              },
            ),
            ElevatedButton(
              child: Text("Http Api"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HttpApiKullanimi()));
              },
            ),
            /*RaisedButton(
              child: Text("Remote Api"),
              color: Colors.orangeAccent,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RemoteApiKullanimi()));
              },
            ),*/
          ],
        ),
      ),
    );
  }
}
