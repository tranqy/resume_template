import 'package:aaron_junod_dev/models/resume_content.dart';
import 'package:flutter/material.dart';

class HeaderProfileHeadline extends StatelessWidget {
  final HeaderProfileHeadlineDirection direction;
  final ResumeContent resumeContent;

  const HeaderProfileHeadline({
    Key key,
    this.direction,
    this.resumeContent
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var _profileDetails = <Widget>[
      Text(resumeContent.name,
          style: TextStyle(
              color: Colors.white,
              fontSize: 21.0,
              fontWeight: FontWeight.w300)),
      Text(resumeContent.headerText,
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
