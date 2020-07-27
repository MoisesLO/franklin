import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  final String urlImage;
  Photo(this.urlImage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Regresar'),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Center(
              child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/" + urlImage),
                  fit: BoxFit.fitWidth),
            ),
          )),
        ));
  }
}

//SliverAppBar(
//pinned: true,
//expandedHeight: MediaQuery.of(context).size.height,
//flexibleSpace: Image.asset(
//"assets/images/"+urlImage,
//fit: BoxFit.fill,
//),
//leading: IconButton(
//icon: Icon(Icons.arrow_back),
//onPressed: () => Navigator.of(context).pop(),
//),
//),
