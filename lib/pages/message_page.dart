import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gmail/data/messages.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text("Principale",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  isThreeLine: true,
                  leading: CircleAvatar(

                    radius: 25,
                    child: Text(messages[index]["title"]![0], ),
                    backgroundColor: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)].shade600,
                    foregroundColor: Colors.white,
                  ),
                  title: Text(
                    messages[index]["title"]!,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      messages[index]["body"]!),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(TimeOfDay.fromDateTime(DateTime.parse(messages[index]["date"].toString())).format(context)),
                      Expanded(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star_border,
                              size: 20,
                            )),
                      )
                    ],
                  ),
                  onTap: () {},
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
