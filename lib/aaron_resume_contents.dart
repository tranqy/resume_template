
import 'models/resume_content.dart';
import 'models/resume_position.dart';

class AaronResumeContents {
  static ResumeContent executiveSummary = ResumeContent(
    sectionTitle: "EXECUTIVE SUMMARY",
    sectionContent: "Technology leader with extensive experience in Financial Services (Fintech) and Software as a Service (SaaS). Exceptional team builder who has effectively delivered broad solutions for small and large scale ﬁnancial systems. Innovative thinker adept at leading teams through uncharted territory.",
    positions: [],
  );

  static ResumeContent currentPosition = ResumeContent(
    sectionTitle: "CURRENT POSITION",
    sectionContent: "",
    positions: [
      ResumePosition(
        organization: "Geezeo",
        location: "Braintree, MA",
        dates: "2014-PRESENT",
        title: "Vice President, Product Management",
        overview: "Manage product development, design, and UI engineering teams. Work with internal and external stakeholders to set and maintain product strategy across organizational units. Work with stakeholders in software partners to deﬁne and execute integration strategies.",
        accomplishments: [
          "Led multiple design, development and analysis projects concurrently delivering a number of strategic products such as TruBiz, Responsive Tiles, and Geezeo’s SDK Suite.",
          "Work directly with Senior Management setting, maintaining and communicating overall product strategy across all of Geezeo’s products." ,
          "Participate in architecture discussions with Financial Systems partners about strategic and tactical integration into various Core, OLB, Mobile, and other FinTech vendors."
        ]
      )
    ]
  );
}