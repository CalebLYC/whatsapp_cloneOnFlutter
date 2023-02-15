import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/discussion_page.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({super.key});

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  late List<Map<String, dynamic>> groups = [];
  @override
  void initState() {
    super.initState();
    groups = [
      {
        'name': "EPL Classroom",
        'image': 'minia.jpeg',
        'description': "Yvan, Bernadin, Roland,..."
      },
      {
        'name': "CIC Promo 2021",
        'image': 'conf3.jpeg',
        'description': "Yvan, Bernadin, Roland,..."
      },
      {
        'name': "Flutter",
        'image': 'minia.jpeg',
        'description': "Docteur Parfait, Martino,..."
      },
      {
        'name': "MIABE HACHATON",
        'image': 'conf3.jpeg',
        'description': "Docteur Parfait, Martino,..."
      },
      {
        'name': "Nigth Coding Meet",
        'image': 'conf2.jpeg',
        'description': "Docteur Parfait, Martino,..."
      },
    ];

    groups.sort((a, b) => a['name']!.compareTo(b['name'] as String));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        //shrinkWrap: true,
        itemCount: groups.length,
        itemBuilder: (context, index) {
          final group = groups[index];

          return Card(
              child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DiscussionPage()));
            },
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/${group['image']}'),
              ),
              title: Text('${group['name']}'),
              subtitle: Text('${group['description']}'),
            ),
          ));
        },
      ),
    );
  }
}
