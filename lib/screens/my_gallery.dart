import 'package:flutter/material.dart';
import 'package:bilder_galerie_new/classes/gallery_data.dart';

class MyGallery extends StatelessWidget {
  const MyGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 243, 148, 148),
            Color.fromARGB(255, 240, 188, 188),
            Color.fromARGB(255, 240, 188, 188),
            Color.fromARGB(255, 243, 148, 148),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: galleryData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(4),
              child: galleryData[index],
            );
          },
        ),
      ),
    );
  }
}
