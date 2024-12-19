import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.menu, color: Colors.black),
                onPressed: () {
                },
              ),

              // Espacement entre le menu et le champ de recherche
              const SizedBox(width: 10),

              // Barre de recherche
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Rechercher dans les messages",
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    border: InputBorder.none,
                  ),
                ),
              ),

              // Avatar circulaire
              const SizedBox(width: 10),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.8xC-Y-eFY84Set5-4ubV5AHaE7?rs=1&pid=ImgDetMain"), // Remplacez par votre image
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text("Contenu principal"),
      ),
    );
  }
}

