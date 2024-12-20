import 'package:flutter/material.dart';
import 'package:gmail/pages/drawer_page.dart';
import 'package:gmail/pages/video_page.dart';
import 'package:gmail/pages/message_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final pages = [
    MessagePage(),
    VideoPage(),
  ];
  int _selectedPage = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: DrawerPage(),
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(blurRadius: 10, color: Colors.grey.withOpacity(0.4))
                ]),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        icon: Icon(Icons.menu)),
                    Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(borderSide: BorderSide.none),
                              hintText: "rechercher parmis les message"),
                        )),
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: pages[_selectedPage],
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 10,color: Colors.grey.withOpacity(0.4))]
        ),
        child: NavigationBar(
          selectedIndex: _selectedPage,
            onDestinationSelected: (int index) {
              return setState(() {
            _selectedPage = index;

              });
            },
            backgroundColor: Colors.white,
            indicatorColor: Colors.transparent,
            destinations: [
          NavigationDestination(icon: Icon(Icons.email,), label: "",selectedIcon: Icon(Icons.email,color: Colors.red,) ,),
          NavigationDestination(icon: Icon(Icons.photo_camera_front), label: "",selectedIcon: Icon(Icons.photo_camera_front,color: Colors.red,) ,),
        ]),
      ),
    );
  }
}
