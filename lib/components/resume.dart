import 'package:flutter/material.dart';
import '../models/resume_content.dart';
import '../models/resume_position.dart';
import 'position.dart';

class Resume extends StatelessWidget {
  final ResumeContent resumeContent;

  const Resume({Key key, this.resumeContent}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List<Widget> positions = List<Widget>();
    if (resumeContent.positions != null) {
      resumeContent.positions.forEach((position) {
        positions.add(Row(
          children: <Widget>[
            Position(resumePosition: position,)
          ],
        ));
      });
    }
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(resumeContent.sectionTitle, style: Theme.of(context).textTheme.headline.copyWith(color: Theme.of(context).primaryColorDark),),
        Card(
          margin: EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                resumeContent.sectionContent != null ? Text(resumeContent.sectionContent) : Container(color: Theme.of(context).accentColor,),
                for(ResumePosition position in resumeContent.positions) Position(resumePosition: position,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
