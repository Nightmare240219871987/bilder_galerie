import 'package:bilder_galerie_new/screens/my_gallery.dart';
import 'package:bilder_galerie_new/screens/profile.dart';
import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  final List<Widget> screens = [MyGallery(), Profile()];
  final List<String> titles = ["MyGallery", "MyGallery", "Details"];
  int currentIndex = 0;
  String currentTitle = "MyGallery";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFEEEEEE),
        appBar: AppBar(
          title: Center(
            child: Text(
              currentTitle,
              style: TextStyle(color: Color(0xFFEEEEEE)),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 106, 7, 0),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          backgroundColor: const Color.fromARGB(255, 223, 209, 209),
          indicatorColor: const Color.fromARGB(255, 218, 134, 162),
          onDestinationSelected: (value) {
            setState(() {
              currentIndex = value;
              currentTitle = titles[value];
            });
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.image), label: "Bilder"),
            NavigationDestination(icon: Icon(Icons.person), label: "Über mich"),
          ],
        ),
      ),
    );
  }
}
