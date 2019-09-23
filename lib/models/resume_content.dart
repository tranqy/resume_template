import 'resume_position.dart';
import 'resume_skill.dart';

class ResumeContent {
  final String name;
  final String headerText;
  final String email;
  final String twitter;
  final String linkedIn;
  final String github;
  final List<ResumePosition> pastPositions;
  final ResumePosition currentPosition;
  final List<ResumeSkill> skills;
  final List<String> executiveSummary;

  ResumeContent({this.name, this.headerText, this.email, this.twitter, this.linkedIn, this.github, this.pastPositions, this.currentPosition, this.skills, this.executiveSummary});
}

