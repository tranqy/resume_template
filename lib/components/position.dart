import 'package:aaron_junod_dev/models/resume_position.dart';
import 'package:flutter/material.dart';
import 'package:koukicons/approval.dart';

import 'wrap_text.dart';

class Position extends StatelessWidget {
  final ResumePosition resumePosition;

  const Position({Key key, this.resumePosition}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              resumePosition.organization,
              style: theme.textTheme.headline,
            ),
            Text(
              " " + resumePosition.location,
              style: theme.textTheme.subhead.copyWith(color: Colors.black26),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              resumePosition.title,
              style: theme.textTheme.subhead,
            ),
            Text(
              resumePosition.dates,
              style: theme.textTheme.subhead.copyWith(color: theme.accentColor),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              WrapText(
                resumePosition.overview,
                style: theme.textTheme.body1.copyWith(color: theme.accentColor),
              )
            ],
          ),
        ),
        for (Accomplishment accomplishment in resumePosition.accomplishments)
          Padding(
            padding: const EdgeInsets.only(bottom: 8, top: 4),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 2,
                  child: accomplishment.leading,
                ),
                Expanded(
                  flex: 25,
                  child: Text(accomplishment.accomplishment, style: Theme.of(context).textTheme.caption.copyWith(fontSize: 15),)
                ),
                Expanded(
                  flex: 3,
                  child: Container(),
                ),
              ],
            ),
          )
      ],
    );
  }
}
