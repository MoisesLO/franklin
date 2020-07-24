import 'package:flutter/material.dart';

class Cita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 170,
            flexibleSpace: Image.asset(
              "assets/images/cita.jpg",
              fit: BoxFit.cover,
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],

      ),
    );
  }
}