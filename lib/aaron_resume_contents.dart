
import 'package:aaron_junod_dev/models/resume_skill.dart';

import 'models/resume_content.dart';
import 'models/resume_position.dart';

class AaronResumeContents {

  static ResumeContent current = ResumeContent(
    executiveSummary: "Technology leader with extensive experience in Financial Services (Fintech) and Software as a Service (SaaS). Exceptional team builder who has effectively delivered broad solutions for small and large scale ﬁnancial systems. Innovative thinker adept at leading teams through uncharted territory.",
    currentPosition: ResumePosition(
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
    ),
    pastPositions: [
    ResumePosition(
      organization: "SMARTPATH LABS",
      location: "Westport, CT",
      dates: "2012-2014",
      title: "Managing Partner",
      overview: "Founding partner and senior consultant. Worked with partners to set overall organizational direction. Worked with partners in varying capacities including Software Architect, UX Designer, Project Manager, Platform Engineer, and Mobile Engineer.",
      accomplishments: [
        "Led the UX Design, technical architecture, and initial development of a medium sized Angular mobile application in FinTech.",
         "Led the technical design and development of a mobile SDK embedded in millions of devices and collecting analysis data in a Python/Mongo platform in Gaming." ,
         "Led the mobile and assumed the platform development of a chat based automotive parts information system." ,
         "Acted as a mobile developer on a number of other projects including a HIPAA compliant video conferencing and rewards based dining app.",
      ]
    ),
    ResumePosition(
        organization: "Share Deets",
        location: "Westport CT",
        dates: "2012",
        title: "Director, Mobile Engineering",
        overview: "Responsible for all native mobile platform development, deployment and support. Acted as lead iOS developer before and through launch of the deets product. Worked with other teams to lead the product development and user experience discussions for all mobile clients.",
        accomplishments: [
          "Worked with the Chief Engineer to set initial development processes and establish engineering tracking  and delivery protocols.",
          "Worked with platform team to set overall architectural patterns.",
          "Acted as one of the primary liaisons between engineering and the Executive team and Investors.",
        ]
      ),
    ResumePosition(
        organization: "Evolution1",
        location: "Fargo ND",
        dates: "2011-2012",
        title: "Architect Senior Team Lead Mobile",
        overview: "Responsible for the full product and development lifecycle of the Lighthouse1 Mobile Platform including white labeled iOS and Android apps and .net platform components. Worked with executives and product representatives to set the strategic direction of the Mobile platform. ",
        accomplishments: [
          "Gathered requirements, produced mocks and led the development process for both platforms.",
          "Acted as a as active developer on both iOS and Android.",
          "Worked with larger Partners during implementations and managed the completion of Statements of Work."
          "Responsible for all of the build engineering for both iOS and Android."

        ]
      ),
    ResumePosition(
        organization: "Evolution Benefits",
        location: "Avon CT",
        dates: "2004-2011",
        title: "Senior Architect Manager Integration Systems",
        overview: "Started as a developer, through various role changes ultimately served as a senior technical architect helping set and maintain tactical and strategic technical objectives. Led many projects and teams in a variety of technologies and use cases. Inﬂuential leader through exponential growth both organically, and through acquisitions. ",
        accomplishments: [
          "Acted as a developer and eventually architect on a medium scale .net application including .net, WCF, BizTalk, and SQL Server." ,
          "Helped design, build, and maintain the original build and source control system and was responsible for the build system for years." ,
          "Responsible for the technical design, development and ongoing maintenance of the HSA platform which moved Billions of dollars per year." ,
          "Led cross functional project teams of varying sizes from 3 to 11 up to 4 concurrently." ,
          "Worked closely with management during acquisition technical due diligence, as well as helping seed knowledge transfer and manage newly acquired companies technical units." ,
          "Inﬂuential voice and active participant in the organizational shift to agile processes.",
          "Senior architect as the platform scaled through various stages of life, including disassembling the monolith." ,
          "Designed, developed, maintained and supported the original set of partner facing and internal web services, ultimately ended up being responsible for all Integration Systems including hundreds of file feeds with ﬁnancial institutions and insurance carriers.",
        ]
      ),
    ResumePosition(
        organization: "Realized Solutions",
        location: "Bristol CT",
        dates: "2002-2004",
        title: "Senior Developer",
        overview: "Responsible for the design and development of multiple projects for clients. Also responsible for network conﬁguration and administration for multiple clients and the RSI ofﬁce. Included heavy client and vendor contact in both technical and business roles. ",
        accomplishments: []
      ),
    ResumePosition(
        organization: "PreScreen America / Bestworld Associates",
        location: "Arlintgon TX",
        dates: "1996-2002",
        title: "Network Manager",
        overview: "Originally responsible for the overall management of IT including all desktop PC’s, all servers, and all networking equipment. Included heavy client and vendor contact in both a technical and business role, as well as heavy nationwide travel for client sales, support, and implementations. Eventually responsible for the design and development of all software products. Acted as technical lead on all customer implementations. Led project teams of two to three. Included heavy client and vendor communications in both a technical and business role.",
        accomplishments: []
      ),
    ],
    skills: [
      ResumeSkill("FINANCIAL SERVICES / FINTECH / INSURANCE EXPERTISE", "Understanding of core and digital banking, prepaid claims processing, prepaid funding, merchant network settlements etc."),
      ResumeSkill("DISTRIBUTED SYSTEMS AND SAAS EXPERTISE", "Experienced in high throughput, multi-tenant system design and maintenance over long periods of time."),
      ResumeSkill("MODERN FULL STACK POLYGOT ENGINEER AND ARCHITECT", "Experience building, growing, and adjusting teams through rapidly evolving business and technology climates."),
      ResumeSkill("AGILE PRACTITIONER AND COACH", "Delivered agile concepts to a number of development teams. Knowledgable on scrum, kanban, and other variations."),
      ResumeSkill("PRODUCT OWNER AND UX DESIGNER", "Experienced in managing product planning, design teams, user experience design and testing."),
      
 
 
 
 

    ]
  );
}