import 'package:aaron_junod_dev/models/resume_position.dart';
import 'package:flutter/material.dart';

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
              Expanded(
                  child: Container(
                      child: Text(
                resumePosition.overview,
                style: theme.textTheme.body1.copyWith(color: theme.accentColor),
              )))
            ],
          ),
        ),
        for (String accomplishment in resumePosition.accomplishments)
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IconButton(
                  icon: Icon(Icons.battery_full),
                  onPressed: (){},
                ),
              ),
              Expanded(child: Container(child: Padding(
                padding: const EdgeInsets.only(left:48, top:8, bottom: 8, right: 128),
                child: Text(accomplishment),
              ))),
            ],
          )
      ],
    );
  }
}
