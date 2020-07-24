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
                        width: MediaQuery.of(context).size.width * 0.40,
                        height: MediaQuery.of(context).size.height * 0.40,
                        color: Colors.blueAccent[400],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.40,
                        height: MediaQuery.of(context).size.height * 0.40,
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
