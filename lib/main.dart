import 'package:flutter/material.dart';
import 'components/header.dart';
import 'components/custom_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aaron Junod',
      theme: CustomTheme.current(),
      home: _portfolio(context),
    );
  }
  
  Widget _portfolio(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        Header(),
      ],
    );
  }

}



