import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/post.dart';

class HttpApiKullanimi extends StatefulWidget {
  const HttpApiKullanimi({Key key}) : super(key: key);

  @override
  _HttpApiKullanimiState createState() => _HttpApiKullanimiState();
}

class _HttpApiKullanimiState extends State<HttpApiKullanimi> {
  Future<List<Post>> _postGetir() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if (response.statusCode == 200) {
      //return Post.fromJson(json.decode(response.body));
      return (json.decode(response.body) as List)
          .map((e) => Post.fromJson(e))
          .toList();
    } else {
      throw Exception("Baglanamadık ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Api Verileri"),
      ),
      body: FutureBuilder(
          future: _postGetir(),
          builder: (context, AsyncSnapshot<List<Post>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data[index].title),
                      subtitle: Text(snapshot.data[index].body),
                      leading: CircleAvatar(
                        child: Text(snapshot.data[index].id.toString()),
                      ),
                      trailing: Text(snapshot.data[index].userId.toString()),
                    );
                  });
            } else if (snapshot.error) {
              return Text("Baglanamadık");
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
