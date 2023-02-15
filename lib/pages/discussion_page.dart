import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/components/chat_input_field.dart';

class DiscussionPage extends StatefulWidget {
  const DiscussionPage({super.key});

  @override
  State<DiscussionPage> createState() => _DiscussionPageState();
}

class _DiscussionPageState extends State<DiscussionPage> {
  late List<Map<String, dynamic>> messages = [];
  late String user = "Caleb Lyc";
  final String dest = "Bernadin";

  void sendMessage(String message) {
    setState(() {
      messages.add({
        'content': message,
        'author': user,
        'date': 'A l\'instant',
      });
    });
  }

  @override
  void initState() {
    super.initState();
    messages = [
      {'author': dest, 'content': 'Salut', 'date': "Il y a 1h 17 minutes"},
      {
        'author': dest,
        'content': 'Et le challenge?',
        'date': "Il y a 3 minutes"
      },
      /*{'author': dest, 'content': 'ça va?', 'date': "Il y a 3 minutes"},
        {'author': user, 'content': 'Salut mec', 'date': "Il y a 30 minutes"},
      {
        'author': dest,
        'content': 'Et le challenge?',
        'date': "Il y a 3 minutes"
      },
      {
        'author': user,
        'content': 'Hmmm, en tout cas j\'ai quand-même pu faire quelque chose',
        'date': "Il y a 50 secondes"
      },
      {
        'author': dest,
        'content': 'Moi, je vais finir le second ce soir',
        'date': "A l'instant"
      },*/
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dest),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Column(
                children: messages.map((message) {
                  final bool condition = message['author'] == user;
                  return Container(
                    padding: const EdgeInsets.all(25),
                    margin: condition
                        ? const EdgeInsets.only(
                            left: 100, right: 10, top: 10, bottom: 10)
                        : const EdgeInsets.only(
                            left: 10, right: 100, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: condition ? Colors.green : Colors.grey[200],
                      borderRadius: condition
                          ? const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            )
                          : const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                    ),
                    constraints: const BoxConstraints(
                      //minWidth: 75,
                      //minHeight: 50,
                      maxWidth: 300,
                    ),
                    child: ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/images/userIcon.jpeg'),
                      ),
                      //title: Text('${message['author']}'),
                      subtitle: Column(
                        crossAxisAlignment: condition
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${message['content']}',
                            style: TextStyle(
                              fontSize: 20,
                              color: condition ? Colors.white : Colors.green,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            '${message['date']}',
                            style: const TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ChatInputField(
              onSubmitted: (message) => sendMessage(message),
            ),
          ],
        ),
      ),
    );
  }
}
