import 'package:flutter/material.dart';

class Consultorio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 170,
            flexibleSpace: Image.asset(
              "assets/images/consultorio.jpg",
              fit: BoxFit.cover,
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black87),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          SliverToBoxAdapter(
            child: Scrollbar(
                child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Consultorio Dental', style: TextStyle(fontSize: 20)),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and Lorem Ipsum is simply dummy text of the printing and Lorem Ipsum is simply dummy text of the printing and.',
                        style: TextStyle(fontSize: 17, height: 1.3)),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        child: FlatButton(
                          padding: EdgeInsets.all(0.0),
                            onPressed: null,
                            child: Image.asset(
                              "assets/images/consultorio1.jpg",
                            )),
                        width: (MediaQuery.of(context).size.width / 2) - 20,
                        padding: EdgeInsets.only(right: 10),
                      ),
                      Container(
                        child: FlatButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: null,
                            child: Image.asset(
                              "assets/images/consultorio1.jpg",
                            )),
                        width: (MediaQuery.of(context).size.width / 2) - 20,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset(
                            "assets/images/consultorio.jpg",
                            width: (MediaQuery.of(context).size.width / 2) - 20,
                          ),
                        ),
                        Image.asset(
                          "assets/images/consultorio.jpg",
                          width: (MediaQuery.of(context).size.width / 2) - 20,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset(
                            "assets/images/consultorio.jpg",
                            width: (MediaQuery.of(context).size.width / 2) - 20,
                          ),
                        ),
                        Image.asset(
                          "assets/images/consultorio.jpg",
                          width: (MediaQuery.of(context).size.width / 2) - 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
