import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aaron Junod',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _portfolio(),
    );
  }
  
  Widget _portfolio() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    title: Text("Aaron Junod",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.network(
                      "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                      fit: BoxFit.cover,
                    )),
              ),
      ],
    );
  }

  Widget _header() {
    return Column(
      children: <Widget>[
        
      ],
    );
  }
}
