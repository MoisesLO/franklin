import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  OptionCard(
      {@required this.title, @required this.description, @required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: SizedBox(
              height: 200.0,
              width: 90.0, // fixed width and height
              child: Image.asset(
                "assets/images/"+image,
                fit: BoxFit.fitWidth,
              )),
          title: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16.8, color: Colors.black54),
          ),
          subtitle: Text(description),
        ),
        Divider()
      ],
    );
  }
}
