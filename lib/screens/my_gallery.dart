import 'package:flutter/material.dart';
import 'package:bilder_galerie_new/classes/gallery_data.dart';

class MyGallery extends StatelessWidget {
  const MyGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: galleryData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return galleryData[index];
      },
    );
  }
}
