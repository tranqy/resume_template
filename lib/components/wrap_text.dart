import 'package:flutter/material.dart';

class WrapText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final EdgeInsets padding;

  WrapText(this.text, {this.style, this.padding = const EdgeInsets.all(8.0)});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Padding(
          padding: padding,
          child: Text(text, style: style,),
        ),
      ),
    );
  }
}