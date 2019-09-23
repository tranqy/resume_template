import 'package:aaron_junod_dev/models/resume_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
              _launchURL("http://linkedin.com/in/${resumeContent.linkedIn}");
            }),
        IconButton(
            // Use the FontAwesomeIcons class for the IconData
            color: Colors.white54,
            icon: new Icon(FontAwesomeIcons.github),
            onPressed: () {
              _launchURL("http://github.com/${resumeContent.github}");
            }),
        IconButton(
            // Use the FontAwesomeIcons class for the IconData
            color: Colors.white54,
            icon: new Icon(FontAwesomeIcons.twitter),
            onPressed: () {
              _launchURL("http://twitter.com/${resumeContent.twitter}");
            }),
        FlatButton(
          onPressed: () {
              _launchURL("mailto:${resumeContent.email}");
          },
          child: Text(resumeContent.email,
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400)),
        )
      ],
    );
  }
  _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}




}