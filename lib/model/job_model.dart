import 'package:jobfinder/utils/magic_string.dart';

class JobsModel {
  late String imgUrl;
  late String title;
  late String role;
  late String location;
  late DateTime date;
  late int cost;
  late List<String> requirment;
  late String jobType;
  late String description;
  late String level;
  late String experince;
  late List<String> jobOverSite;

  JobsModel({
    required this.imgUrl,
    required this.title,
    required this.role,
    required this.location,
    required this.date,
    required this.cost,
    required this.requirment,
    required this.jobType,
    required this.description,
    required this.level,
    required this.experince,
    required this.jobOverSite,
  });

  JobsModel.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    title = json['title'];
    role = json['role'];
    location = json['location'];
    date = DateTime.parse(json["date"]);
    cost = json['cost'];
    requirment = json['requirment'];
    jobType = json['jobType'];
    description = json['description'];
    level = json['level'];
    experince = json['experience'];
    jobOverSite = json['jobOverSite'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['imgUrl'] = imgUrl;
    data['title'] = title;
    data['role'] = role;
    data['location'] = location;
    data['date'] = date.toIso8601String();
    data['cost'] = cost;
    data['requirment'] = requirment;
    data['jobType'] = jobType;
    data['description'] = description;
    data['level'] = level;
    data['experience'] = experince;
    data['jobOverSite'] = jobOverSite;
    return data;
  }
}

final telegram = JobsModel(
  imgUrl: ImageNames.telegram,
  title: "Telegram",
  role: "Junior UI Designer",
  location: "Jakarta, Indonesia - Onsite",
  date: DateTime(2023, 1, 18, 17, 30),
  cost: 420,
  requirment: [
    'Expert in UI/UX Experience',
    "Have a Good Portofolio",
    "Good at Using Animation",
    "Experience Designing across multiple platform"
  ],
  jobType: "Fulltime",
  description:
      "Telegram is a globablly acessible freemium, cross-platform, encrypted, cloud-based and centralized instant messaging service. The application also provides optional end-to-end encrypted chats, popularly known as a secret chat and video calling, VoIP, file sharing and several other features.",
  level: "Entry Level",
  experince: "2 - 6 years",
  jobOverSite: ['Fulltime', 'Internship', 'Entry Level'],
);

final behance = JobsModel(
  imgUrl: ImageNames.behance,
  title: "Behance",
  role: "Senior UI Designer",
  location: "Surabaya Indonesia - Onsite",
  date: DateTime(2023, 1, 18, 17, 30),
  cost: 420,
  requirment: [
    'Expert in UI/UX Experience',
    "Have a Good Portofolio",
    "Good at Using Animation",
    "Experience Designing across multiple platform"
  ],
  jobType: "Fulltime",
  description:
      "Behance is a social media platform owned by Adobe whose main focus is to showcase and discover creative work.",
  level: "Entry Level",
  experince: "2 - 6 years",
  jobOverSite: ['Contract', 'Internship', 'Mid Senior Level'],
);

List<JobsModel> jobModel = [
  telegram,
  behance,
];
