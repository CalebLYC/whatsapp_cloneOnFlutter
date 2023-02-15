import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/contacts_page.dart';

class HomeFloatingButton extends StatelessWidget {
  const HomeFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        //setCurrentIndex(1);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ContactsPage()),
        );
      },
      child: const Icon(Icons.message),
    );
  }
}

class StatutsFloatingButton extends StatelessWidget {
  const StatutsFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            //setCurrentIndex(1);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ContactsPage()),
            );
          },
          child: const Icon(
            Icons.copy,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          onPressed: () {
            //setCurrentIndex(1);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ContactsPage()),
            );
          },
          child: const Icon(Icons.photo_camera),
        ),
      ],
    );
  }
}

class CallsFloatingButton extends StatelessWidget {
  const CallsFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        //setCurrentIndex(1);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ContactsPage()),
        );
      },
      child: const Icon(Icons.add_call),
    );
  }
}

class GroupsFloatingButton extends StatelessWidget {
  const GroupsFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        //setCurrentIndex(1);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ContactsPage()));
      },
      child: const Icon(Icons.groups),
    );
  }
}
