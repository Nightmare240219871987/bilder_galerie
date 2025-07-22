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
      debugShowCheckedModeBanner: false,
      title: "Bilder Gallerie",
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 240, 188, 188),
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
          backgroundColor: const Color.fromARGB(255, 106, 7, 0),
          indicatorColor: const Color.fromARGB(255, 218, 134, 162),
          onDestinationSelected: (value) {
            setState(() {
              currentIndex = value;
              currentTitle = titles[value];
            });
          },
          labelTextStyle: WidgetStatePropertyAll(
            TextStyle(color: Color(0xFFEEEEEE)),
          ),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.image, color: Color(0xFFEEEEEE)),
              label: "Bilder",
            ),
            NavigationDestination(
              icon: Icon(Icons.person, color: Color(0xFFEEEEEE)),
              label: "Über mich",
            ),
          ],
        ),
      ),
    );
  }
}
