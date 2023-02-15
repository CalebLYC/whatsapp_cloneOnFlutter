import 'package:flutter/material.dart';

class ParametersPage extends StatefulWidget {
  const ParametersPage({super.key});

  @override
  State<ParametersPage> createState() => _ParametersPageState();
}

class _ParametersPageState extends State<ParametersPage> {
  final parameters = [
    {
      'icon': const Icon(Icons.key),
      'paramTitle': "Compte",
      'description': "Notifications de sécurité, changer de\n numéro"
    },
    {
      'icon': const Icon(Icons.security),
      'paramTitle': "Confidentialité",
      'description': "Créer, modifier photo de profil"
    },
    {
      'icon': const Icon(Icons.data_exploration),
      'paramTitle': "Avatar",
      'description': "Bloquer des contacts, messages\n éphémères"
    },
    {
      'icon': const Icon(Icons.message_rounded),
      'paramTitle': "Discussion",
      'description': "Thème, fond d'écran, historique de\n discussions"
    },
    {
      'icon': const Icon(Icons.notifications),
      'paramTitle': "Notifications",
      'description': "Sonnerie des messages, groupes et\n appels"
    },
    {
      'icon': const Icon(Icons.data_saver_off),
      'paramTitle': "Utilisation des donnés de stockage",
      'description': "Utilisation réseaun téléchargement\n auto."
    },
    {
      'icon': const Icon(Icons.language),
      'paramTitle': "Langues de l'application",
      'description': "Français(langue de téléphone)"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paramètres"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(bottom: 7)),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/userIcon.png'),
              ),
              title: Text("Caleb Lyc"),
              subtitle: Text(""),
              trailing: Icon(
                Icons.line_style_rounded,
                color: Colors.green,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 25)),
          Container(
            //height: 600,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: parameters.length,
              itemBuilder: (context, index) {
                final parameter = parameters[index];
                final paramTitle = parameter['paramTitle'];
                final description = parameter['description'];
                Widget icon = parameter['icon'] as Widget;

                return Card(
                  child: ListTile(
                    leading: Container(
                      width: 80,
                      height: 80,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: icon,
                    ),
                    title: Text('$paramTitle'),
                    subtitle: Text('$description'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
