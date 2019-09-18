import 'package:aaron_junod_dev/components/skill.dart';
import 'package:aaron_junod_dev/models/resume_skill.dart';
import 'package:flutter/material.dart';
import '../models/resume_content.dart';
import '../models/resume_position.dart';
import 'position.dart';

class Resume extends StatelessWidget {
  final ResumeContent resumeContent;

  const Resume({Key key, this.resumeContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _header("EXEUTIVE SUMMARY", context),
          _content([Text(resumeContent.executiveSummary)]),
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
          

          // resumeContent.sectionContent != null
          //         ? Text(resumeContent.sectionContent)
          //         : Container(
          //             color: Theme.of(context).accentColor,
          //           ),
          //     Position(
          //       resumePosition: resumeContent.currentPosition,
          //     ),
          //     for (ResumePosition position in resumeContent.pastPositions)
          //       Position(
          //         resumePosition: position,
          //       )
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
}
