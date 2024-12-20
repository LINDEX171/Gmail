import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, top: 15, bottom: 0, right: 0),
                  child: Image(
                    image: AssetImage("assets/images/gmail.png"),
                    width: 150,
                  ),
                ),
                Divider(),
                ListTile(
                  leading:
                      IconButton(onPressed: () {}, icon: Icon(Icons.inbox)),
                  title: Text("Principale"),
                  trailing: Text("99+"),
                ),
                ListTile(
                  leading:
                      IconButton(onPressed: () {}, icon: Icon(Icons.person_2_outlined)),
                  title: Text("Réseaux "),
                  trailing: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "28 nouveaux",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                ),
                ListTile(
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.sell_outlined)),
                  title: Text("Promotions"),
                  trailing: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "28 nouveaux",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                ),
                ListTile(
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.info_outline)),
                  title: Text("Notification"),
                  trailing: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "28 nouveaux",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                ),
                Divider(),
                ListTile(
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
                  title: Text("Favoris"),
                ),
                ListTile(
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.access_time_outlined)),
                  title: Text("En attente"),
                ),
                ListTile(
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.label_important_outline)),
                  title: Text("Important"),
                  trailing: Text("99+"),
                ),
                ListTile(
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.access_time_outlined)),
                  title: Text("En attente"),
                ),
                ListTile(
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined)),
                  title: Text("Envoyés"),
                ),
                ListTile(
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.schedule_send_outlined)),
                  title: Text("Envois programmés"),
                ),
                ListTile(
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.send_time_extension_outlined)),
                  title: Text("Boite d'envoi"),
                ),
                ListTile(
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.paste)),
                  title: Text("Brouillons"),
                ),
                ListTile(
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.email_outlined)),
                  title: Text("Tous les messages"),
                ),
                ListTile(
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.info_outline)),
                  title: Text("Spam"),
                ),
                ListTile(
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.delete_outline)),
                  title: Text("Corbeille"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
