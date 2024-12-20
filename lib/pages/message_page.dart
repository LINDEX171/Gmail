import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  isThreeLine: true,
                  leading: CircleAvatar(
                    radius: 25,
                    child: Text("A"),
                    backgroundColor: Colors.orange,
                  ),
                  title: Text(
                    "Anki web",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      "please do something like i don't know how i can do"),
                  trailing: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("10:23 PM"),
                      Expanded(
                        child: IconButton(onPressed: () {

                        }, icon: Icon(Icons.star_border,size: 20,)),
                      )
                    ],
                  ),
                  onTap: () {

                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
