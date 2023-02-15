import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/calls_page.dart';
import 'package:whatsapp_clone/pages/components/my_floating_buttons.dart';
import 'package:whatsapp_clone/pages/groups_page.dart';
import 'package:whatsapp_clone/pages/home_page.dart';
import 'package:whatsapp_clone/pages/parameters_page.dart';
import 'package:whatsapp_clone/pages/statuts_page.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _currentIndex = 0;
  void setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://i.pravatar.cc/100',
                  ),
                  radius: 20,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'WhatsApp',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'En ligne',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.photo_camera),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {
                    //setCurrentIndex(4);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ParametersPage()),
                    );
                  },
                ),
              ],
            ),
            BottomNavigationBar(
              backgroundColor: Colors.green,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              currentIndex: _currentIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.group),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Text("Dic."),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Text("Statuts"),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Text("Appels"),
                  label: "",
                ),
              ],
              onTap: ((value) => setCurrentIndex(value)),
            ),
          ],
        ),
        /*backgroundColor: Colors.green,
          elevation: 0,
          bottom: TabBar(
            labelPadding: EdgeInsets.zero,
            indicatorWeight: 2,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: const [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'Disc.'),
              Tab(text: 'Statut'),
              Tab(text: 'Appels'),
            ],
            onTap: (value) => setCurrentIndex(value),
          ),
          bottomOpacity: 1,*/
      ),
      body: [
        const GroupsPage(),
        const HomePage(),
        const StatutsPage(),
        const CallsPage(),
        //const ParametersPage(),
      ][_currentIndex],
      floatingActionButton: [
        const GroupsFloatingButton(),
        const HomeFloatingButton(),
        const StatutsFloatingButton(),
        const CallsFloatingButton(),
      ][_currentIndex],
    );
  }
}
