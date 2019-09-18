import 'resume_position.dart';
import 'resume_skill.dart';

class ResumeContent {
  final List<ResumePosition> pastPositions;
  final ResumePosition currentPosition;
  final List<ResumeSkill> skills;
  final String executiveSummary;

  ResumeContent({this.pastPositions, this.currentPosition, this.skills, this.executiveSummary});
}

