import 'package:flutter/material.dart';

class HeaderProfileHeadline extends StatelessWidget {
  final HeaderProfileHeadlineDirection direction;

  const HeaderProfileHeadline({
    Key key,
    this.direction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    var _profileDetails = <Widget>[
      Text("Aaron Junod",
          style: TextStyle(
              color: Colors.white,
              fontSize: 21.0,
              fontWeight: FontWeight.w300)),
      Text("Technology executive with extensive Fintech and SaaS experience",
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.w300)),
    ];

    if (direction == HeaderProfileHeadlineDirection.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _profileDetails,
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _profileDetails,
    );
  }
}

enum HeaderProfileHeadlineDirection { horizontal, vertical }
