import 'package:aaron_junod_dev/components/skill.dart';
import 'package:aaron_junod_dev/models/resume_skill.dart';
import 'package:flutter/material.dart';
import 'package:koukicons/employeeBadge2.dart';
import '../models/resume_content.dart';
import '../models/resume_position.dart';
import 'position.dart';
import 'wrap_text.dart';

class Resume extends StatelessWidget {
  final ResumeContent resumeContent;

  const Resume({Key key, this.resumeContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _header("EXEUTIVE SUMMARY", context),
          _content([_executiveSummary(context)]),
          _header("CURRENT POSITION", context),
          _content([Position(resumePosition: resumeContent.currentPosition,)]),
          _header("SKILLS", context),
          Card(
            margin: EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [for (ResumeSkill skill in resumeContent.skills) Skill(resumeSkill: skill,)]
              ),
            ),
          ),
          _header("PAST POSITIONS", context),
          Card(
            margin: EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [for (ResumePosition position in resumeContent.pastPositions) Position(resumePosition: position,)]
              ),
            ),
          ),
          
        ],
      ),
    );
  }

  Text _header(String text, BuildContext context) {
    return Text(
        text,
        style: Theme.of(context).textTheme.headline.copyWith(color: Theme.of(context).primaryColorDark),
      );
  }

  Widget _content(List<Widget> children) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: children
        ),
      ),
    );
  }

  Widget _executiveSummary(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: KoukiconsEmployeeBadge2(),
        ),
    
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            for (String summary in resumeContent.executiveSummary) Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(summary, style: Theme.of(context).textTheme.subhead.copyWith(color: Theme.of(context).primaryColorDark),),
            )
          ],
        )
      ],
    );
  }
}

