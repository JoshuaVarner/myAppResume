import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joshua Varner Resume App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Resume App'),
        ),
        body: ResumePage(),
      ),
    );
  }
}

class ResumePage extends StatelessWidget {
  final String name = 'Joshua Varner';
  final String position = 'Software Developer';
  final String email = 'JoshuaVarner70@gmail.com';
  final String phone = '(209)596-0700';
  final String linkedIn =
      'https://www.linkedin.com/in/joshuamvarner/\nhttps://github.com/JoshuaVarner\n';
  final String summary =
      'I have a passion for using technology to solve complex problems and improve the world around us. With an education in computer science, I have a strong foundation in Programming, Cybersecurity and Networking. I am always looking for new challenges and opportunities to learn and grow as a computer scientist. In my free time, I enjoy staying up to date on the latest developments in the field of computer science and contributing to open source projects. I am also an avid learner and enjoy exploring new technologies and programming languages.\n';
  final List<String> skills = [
    'Cybersecurity',
    'Dart',
    'Java',
    'IT Operations',
    'Linux',
    'Networking',
    ' '
  ];
  final List<String> experiences = [
    'Computer Repair Modesto, CA',
    'Computer Repair Technician May 2016 July 2016 Solved issues involving computer hardware and software',
    'Built computer systems to customers specifications',
    'Performed data/password recovery'
        'Located and fixed server, network, and connection problems',
    'Solved 3 to 5 customer issues daily',
    ' ',
  ];
  final List<String> education = [
    'Associate of Science in Computer Science, Modesto Junior College - 3.5 GPA',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(position),
          Text(email),
          Text(phone),
          Text(linkedIn),
          Text(summary),
          Text('Skills:'),
          ...skills.map((skill) => Text(skill)),
          Text('Experience:'),
          ...experiences.map((experience) => Text(experience)),
          Text('Education:'),
          ...education.map((education) => Text(education)),
        ],
      ),
    );
  }
}
