import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 55,
          backgroundColor: Theme.of(context).primaryColorLight,
          child: CircleAvatar(
            radius: 50,
            child: ClipOval(child: Image.asset("assets/headshot_aaron_close_bw.png")),
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}