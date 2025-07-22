import 'package:bilder_galerie_new/widgets/gallery_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  GalleryItem item;
  Details({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        title: Center(
          child: Text("Details", style: TextStyle(color: Color(0xFFEEEEEE))),
        ),
        backgroundColor: const Color.fromARGB(255, 106, 7, 0),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(item.imagePath),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(item.imageTitle, style: TextStyle(fontSize: 24)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                item.imageDate,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                top: 16.0,
                right: 16.0,
              ),
              child: Text(item.imageDescription),
            ),
          ],
        ),
      ),
    );
  }
}
