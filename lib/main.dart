import 'package:flutter/material.dart';
import 'package:franklin/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          body1: TextStyle(color: kBodyTextColor)
        )
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hola mundo'),
    );
  }
}

