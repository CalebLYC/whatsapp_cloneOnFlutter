import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/discussion_page.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  late List<Map<String, dynamic>> contacts;
  @override
  void initState() {
    super.initState();
    contacts = [
      {
        'name': "Bernadin",
        'image': 'conf1.jpeg',
        'description': "Salut, j'utilise whatsapp"
      },
      {
        'name': "Jack Josoué",
        'image': 'conf3.jpeg',
        'description': "Salut, j'utilise whatsapp"
      },
      {'name': "Victoire", 'image': 'conf2.jpeg', 'description': "En ligne"},
      {
        'name': "Geoffrey",
        'image': 'userIcon.jpeg',
        'description': "Salut, j'utilise whatsapp"
      },
      {
        'name': "Joie",
        'image': 'minia.jpeg',
        'description': "Salut, j'utilise whatsapp"
      },
      {'name': "Grand frère", 'image': 'conf2.jpeg', 'description': "En ligne"},
    ];

    contacts.sort((a, b) => a['name']!.compareTo(b['name'] as String));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            final contact = contacts[index];

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
                  backgroundImage:
                      AssetImage('assets/images/${contact['image']}'),
                ),
                title: Text('${contact['name']}'),
                subtitle: Text('${contact['description']}'),
              ),
            ));
          },
        ),
      ),
    );
  }
}
