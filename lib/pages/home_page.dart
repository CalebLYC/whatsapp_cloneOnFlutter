import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final discusions = [
    {
      'img': "minia.jpeg",
      'title': "Mafia Tech",
      'time': "13:20",
      'notRead': 2,
      'lastAuthor': "Caleb LYC",
      'lastMessage': "Faut pas oublier de proposer...",
    },
    {
      'img': "userIcon.jpeg",
      'title': "Bernadin",
      'time': "13:20",
      'notRead': 0,
      'lastAuthor': "",
      'lastMessage': "Le challenge d'aujourd...",
    },
    {
      'img': "conf3.jpeg",
      'title': "EPL Classroom",
      'time': "13:20",
      'notRead': 0,
      'lastAuthor': "Yvan",
      'lastMessage': "Hmm, les gens l...",
    },
    {
      'img': "userIcon.png",
      'title': "Jack Josoué",
      'time': "11:20",
      'notRead': 1,
      'lastAuthor': "Caleb LYC",
      'lastMessage': "Heureusement que e me suis so...",
    },
    {
      'img': "conf1.jpeg",
      'title': "CIC Promo 2021",
      'time': "10:10",
      'notRead': 1,
      'lastAuthor': "Roland",
      'lastMessage': "Le devoir se tiendra...",
    },
    {
      'img': "conf1.jpeg",
      'title': "Guel",
      'time': "12:31",
      'notRead': 3,
      'lastAuthor': "",
      'lastMessage': "Mec, envoies moi les num...",
    },
    {
      'img': "conf2.jpeg",
      'title': "MIABE HACHATON",
      'time': "11:57",
      'notRead': 8,
      'lastAuthor': "DanielROlo",
      'lastMessage': "La date limite est de...",
    },
    {
      'img': "conf3.jpeg",
      'title': "Flutter",
      'time': "15:20",
      'notRead': 5,
      'lastAuthor': "Docteur Parfait",
      'lastMessage': "Faut pas oublier de proposer...",
    },
    {
      'img': "conf3.jpeg",
      'title': "Roland",
      'time': "15:20",
      'notRead': 0,
      'lastAuthor': "",
      'lastMessage': "Je serai pas dispo...",
    },
    {
      'img': "conf3.jpeg",
      'title': "Nigth Coding meet",
      'time': "16:30",
      'notRead': 7,
      'lastAuthor': "Docteur Parfait",
      'lastMessage': "Salut les codeurs...",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: discusions.length,
      itemBuilder: (context, index) {
        final discussion = discusions[index];
        final img = discussion['img'];
        final title = discussion['title'];
        final time = discussion['time'];
        final notRead = discussion['notRead'];
        final author = discussion['lastAuthor'];
        final message = discussion['lastMessage'];

        return Card(
            child: ListTile(
          leading: Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              "assets/images/$img",
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$title'),
              Text(
                '$time',
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              author != "" ? Text("$author: $message") : Text("$message"),
              notRead != 0
                  ? Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                        //borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          '$notRead',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 15),
                        ),
                      ))
                  : const Text(""),
            ],
          ),
        ));
      },
    );
  }
}
