import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 170,
            flexibleSpace: Image.asset(
              "assets/images/consultorio2.jpg",
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

//body: Center(
//child: RaisedButton(
//onPressed: () {
//Navigator.pushNamed(context, '/');
//// Navigate back to first screen when tapped.
//},
//child: Text('Go back!'),
//),