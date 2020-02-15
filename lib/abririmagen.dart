import 'package:photo_view/photo_view.dart';
import 'package:flutter/material.dart';

class AbrirImagen extends StatelessWidget {
  String image;

  AbrirImagen({this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: InkWell(
          child: PhotoView(
            imageProvider: AssetImage(image),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
