
import 'package:flutter/material.dart';

class ResumePosition {
  final String organization;
  final String title;
  final String dates;
  final String overview;
  final String location;
  final List<Accomplishment> accomplishments;

  ResumePosition({this.organization, this.title, this.dates, this.overview, this.accomplishments, this.location});
  
}

class Accomplishment {
  final String accomplishment;
  Widget leading;

  Accomplishment({this.accomplishment, this.leading}) {
    if (this.leading == null) {
      this.leading = Image.asset("assets/icons/next.png", width: 25,);
    }
  }
}