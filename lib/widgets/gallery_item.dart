import 'package:flutter/material.dart';
import 'package:bilder_galerie_new/screens/details.dart';

// ignore: must_be_immutable
class GalleryItem extends StatelessWidget {
  String imagePath;
  String imageTitle;
  String imageDate;
  String imageDescription;
  GalleryItem({
    super.key,
    required this.imagePath,
    required this.imageTitle,
    this.imageDate = "",
    this.imageDescription = "",
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => Details(item: this)));
      },
      child: Card(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(8),
              child: Image.asset(
                imagePath,
                height: 156,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Center(child: Text(imageTitle)),
            ),
          ],
        ),
      ),
    );
  }
}
