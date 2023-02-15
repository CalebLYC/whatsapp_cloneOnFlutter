import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatutsPage extends StatefulWidget {
  const StatutsPage({super.key});

  @override
  State<StatutsPage> createState() => _StatutsPageState();
}

class _StatutsPageState extends State<StatutsPage> {
  final statuts = [
    {'image': 'minia.jpeg', 'author': "Bernadin", 'date': "Hier, 08:20"},
    {'image': 'conf1.jpeg', 'author': "Rafat", 'date': "Il y a 30 secondes"},
    {'image': 'conf2.jpeg', 'author': "Geoffrey", 'date': "18:20"},
    {'image': 'conf3.jpeg', 'author': "Diane", 'date': "11:16"},
  ];
  final seenStatuts = [
    {'image': 'minia.jpeg', 'author': "Philipe", 'date': "Hier, 08:20"},
    {'image': 'conf1.jpeg', 'author': "Victoire", 'date': "Il y a 30 minutes"},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.only(bottom: 7)),
        const Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/minia.jpeg'),
            ),
            title: Text("Mon statut"),
            subtitle: Text("Aujourd'hui 10:51"),
            trailing: Icon(Icons.more_horiz),
          ),
        ),
        const Padding(padding: EdgeInsets.only(bottom: 5)),
        Row(
          children: const [
            Padding(padding: EdgeInsets.only(left: 25)),
            Text(
              "Mises à jour récentes",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(bottom: 5)),
        Container(
          //height: 300,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: statuts.length,
            itemBuilder: (context, index) {
              final statut = statuts[index];
              final image = statut['image'];
              final author = statut['author'];
              final date = statut['date'];

              return Card(
                child: ListTile(
                  leading: Container(
                    width: 80,
                    height: 80,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset("assets/images/$image"),
                  ),
                  title: Text('$author'),
                  subtitle: Text('$date'),
                ),
              );
            },
          ),
        ),
        Row(
          children: const [
            Padding(padding: EdgeInsets.only(left: 5)),
            Text(
              "Mises à jour vues",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(bottom: 25)),
        Container(
          //height: 130,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: seenStatuts.length,
            itemBuilder: (context, index) {
              final statut = seenStatuts[index];
              final image = statut['image'];
              final author = statut['author'];
              final date = statut['date'];

              return Card(
                child: ListTile(
                  leading: Container(
                    width: 80,
                    height: 80,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset("assets/images/$image"),
                  ),
                  title: Text('$author'),
                  subtitle: Text('$date'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
