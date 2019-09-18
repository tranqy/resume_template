import 'package:flutter/material.dart';

import 'contact_icons.dart';
import 'header_profile_headline.dart';
import 'profile_image.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              ProfileImage(),
              Spacer(
                flex: 1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[HeaderProfileHeadline(), ContactIcons()],
              ),
              Spacer(
                flex: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
