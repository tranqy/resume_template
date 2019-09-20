import 'package:aaron_junod_dev/models/resume_skill.dart';
import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
  final ResumeSkill resumeSkill;

  const Skill({Key key, this.resumeSkill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Row(
              children: <Widget>[
                Expanded(flex:2, child: Container(),),
                Expanded(flex:50, child: Text(resumeSkill.headline, style: Theme.of(context).textTheme.headline.copyWith(color: Theme.of(context).primaryColor),)),
                Expanded(flex: 1, child: Container(),)
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(flex:1, child: Container(),),
              Expanded(flex:50, child: Text(resumeSkill.content, style: Theme.of(context).textTheme.subhead.copyWith(color: Theme.of(context).accentColor),)),
              Expanded(flex: 1, child: Container(),)
            ],
          )
        ],    
      ),
    );
  }
}