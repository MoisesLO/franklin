import 'package:flutter/material.dart';

class Tratamientos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 170,
            flexibleSpace: Image.asset(
              "assets/images/tratamientos.jpg",
              fit: BoxFit.cover,
            ),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          SliverToBoxAdapter(
            child: Scrollbar(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Titulo
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 25),
                  child: Text('Tramientos',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                // Subtitle
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 25),
                  child: Text('Curacion dental',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and Lorem Ipsum is simply dummy text of the printing and Lorem Ipsum is simply dummy text of the printing and.',
                      style: TextStyle(fontSize: 17, height: 1.3)),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: (MediaQuery.of(context).size.width / 2),
                      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: FlatButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () {
                            Navigator.pushNamed(context, '/photo',
                                arguments: 'consultorio1.jpg');
                          },
                          child: Image.asset(
                            "assets/images/consultorio1.jpg",
                          )),
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width / 2),
                      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: FlatButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () {
                            Navigator.pushNamed(context, '/photo',
                                arguments: 'consultorio2.jpg');
                          },
                          child: Image.asset(
                            "assets/images/consultorio.jpg",
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 25),
                  child: Text('Endodoncias Dentales',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and Lorem Ipsum is simply dummy text of the printing and Lorem Ipsum is simply dummy text of the printing and.',
                      style: TextStyle(fontSize: 17, height: 1.3)),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: (MediaQuery.of(context).size.width / 2),
                      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: FlatButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () {
                            Navigator.pushNamed(context, '/photo',
                                arguments: 'consultorio1.jpg');
                          },
                          child: Image.asset(
                            "assets/images/consultorio1.jpg",
                          )),
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width / 2),
                      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: FlatButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () {
                            Navigator.pushNamed(context, '/photo',
                                arguments: 'consultorio2.jpg');
                          },
                          child: Image.asset(
                            "assets/images/consultorio.jpg",
                          )),
                    ),
                  ],
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
