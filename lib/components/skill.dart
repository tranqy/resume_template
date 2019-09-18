import 'package:aaron_junod_dev/models/resume_skill.dart';
import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
  final ResumeSkill resumeSkill;

  const Skill({Key key, this.resumeSkill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Text(resumeSkill.headline, style: Theme.of(context).textTheme.headline.copyWith(color: Theme.of(context).primaryColor),),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Text(resumeSkill.content, style: Theme.of(context).textTheme.subhead.copyWith(color: Theme.of(context).accentColor),),
          ],
        )
      ],    
    );
  }
}