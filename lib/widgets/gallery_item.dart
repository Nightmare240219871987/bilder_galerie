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
        elevation: 4,
        color: Colors.grey.shade400.withValues(alpha: 0.3),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: BoxBorder.all(
              color: Colors.grey.shade400.withValues(alpha: 0.6),
            ),
          ),
          child: Column(
            spacing: 10,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset(
                  imagePath,
                  height: 140,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Center(child: Text(imageTitle)),
            ],
          ),
        ),
      ),
    );
  }
}
