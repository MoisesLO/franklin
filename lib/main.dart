import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:franklin/my_clipper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Consultorio Dental',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/consultorio1.jpg",
                    ),
                    fit: BoxFit.fill)),
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.red,
                child: Text('data'),
              ),
              Container(
                width: 160.0,
                color: Colors.red,
                child: Text('data'),
              ),
              Container(
                width: 160.0,
                color: Colors.red,
                child: Text('data'),
              ),Container(
                width: 160.0,
                color: Colors.red,
                child: Text('data'),
              )
            ],
          ))
        ],
      ),
    );
  }
}

//class MyPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        body: CustomScrollView(
//      slivers: <Widget>[
//        SliverAppBar(
//          pinned: true,
//          expandedHeight: 200,
//          flexibleSpace: Image.asset(
//            "assets/images/consultorio2.jpg",
//            fit: BoxFit.cover,
//          ),
//        ),
//        SliverList(
//
//        )
//      ],
//    ));
//  }
//}
