import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  final calls = [
    {'image': 'minia.jpeg', 'author': "Bernadin", 'date': "Hier, 08:20"},
    {'image': 'conf1.jpeg', 'author': "Rafat", 'date': "Il y a 30 secondes"},
    {'image': 'conf2.jpeg', 'author': "Geoffrey", 'date': "18:20"},
    {'image': 'conf3.jpeg', 'author': "Diane", 'date': "11:16"},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.only(bottom: 10)),
        Card(
          child: ListTile(
            leading: Container(
              padding: const EdgeInsets.all(25),
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              clipBehavior: Clip.antiAlias,
              //transform: Matrix4.rotationZ(-45 * 3.14159 / 180),
              child: Align(
                alignment: Alignment.center,
                child: Transform.translate(
                    offset: const Offset(-20, 0),
                    child: Transform.rotate(
                      angle:
                          -45 * 3.14159 / 180, // 45 degrees counter-clockwise
                      child: const Icon(
                        Icons.link_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
            title: const Text("Créer un lien vers un appel"),
            subtitle:
                const Text("Partager un lien pour votre appel\n whatsapp"),
          ),
        ),
        const Padding(padding: EdgeInsets.only(bottom: 25)),
        Row(
          children: const [
            Padding(padding: EdgeInsets.only(left: 25)),
            Text(
              "Récents",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(bottom: 25)),
        Container(
          height: 300,
          child: ListView.builder(
            itemCount: calls.length,
            itemBuilder: (context, index) {
              final call = calls[index];
              final image = call['image'];
              final author = call['author'];
              final date = call['date'];

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
                  subtitle: Row(
                    children: [
                      const Icon(
                        Icons.call_made,
                        color: Colors.green,
                        size: 15,
                      ),
                      Text('$date'),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
              );
            },
          ),
        ),
        const Padding(padding: EdgeInsets.only(bottom: 25)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(padding: EdgeInsets.only(right: 25)),
            Icon(Icons.security),
            Text(
              "Vos appels personnels sont chiffrés de bout en bout",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ],
        )
      ],
    );
  }
}
