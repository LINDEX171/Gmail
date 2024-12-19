import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: Drawer(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white, boxShadow: [
            BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 10,
              color: Colors.grey.withOpacity(0.4),
            )
          ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Rechercher parmis les messages",
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
