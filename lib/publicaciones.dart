import 'package:flutter/material.dart';
import 'abririmagen.dart';
import 'data.dart';

class Publicaciones extends StatefulWidget {
  @override
  _PublicacionesState createState() => _PublicacionesState();
}

class _PublicacionesState extends State<Publicaciones> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
          child: Tarjeta(
            image: images[index],
            title: title[index],
            description: description[index],
          ),
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(25.0)),
        );
      },
    );
  }
}

class Tarjeta extends StatefulWidget {
  final String image;
  final String title;
  final String description;

  Tarjeta({this.image, this.title, this.description});

  @override
  _TarjetaState createState() => _TarjetaState();
}

class _TarjetaState extends State<Tarjeta> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
          child: InkWell(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AbrirImagen(
                      image: widget.image,
                    ),
                  ),
                );
              });
            },
            child: Image.asset(
              widget.image,
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text('Title: ${widget.title}'),
        Text('Description: ${widget.description}'),
        Text('100% True :v'),
      ],
    );
  }
}
