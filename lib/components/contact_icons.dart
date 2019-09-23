import 'package:aaron_junod_dev/models/resume_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactIcons extends StatelessWidget {
  final ResumeContent resumeContent;

  const ContactIcons({
    Key key,
    this.resumeContent
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
            // Use the FontAwesomeIcons class for the IconData
            color: Colors.white54,
            icon: new Icon(FontAwesomeIcons.linkedin),
            onPressed: () {
              print("Pressed");
            }),
        IconButton(
            // Use the FontAwesomeIcons class for the IconData
            color: Colors.white54,
            icon: new Icon(FontAwesomeIcons.github),
            onPressed: () {
              print("Pressed");
            }),
        IconButton(
            // Use the FontAwesomeIcons class for the IconData
            color: Colors.white54,
            icon: new Icon(FontAwesomeIcons.twitter),
            onPressed: () {
              print("Pressed");
            }),
        FlatButton(
          onPressed: () {},
          child: Text(resumeContent.email,
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400)),
        )
      ],
    );
  }
}