import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:franklin/my_clipper.dart';
import 'package:franklin/card.dart';

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

class MyHomePage extends StatelessWidget {
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
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15, bottom: 7),
                  child: Text(
                    'Tipos de Servicios',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                      height: 200.0,
                      width: 90.0, // fixed width and height
                      child: Image.asset(
                        "assets/images/about.jpg",
                        fit: BoxFit.fitWidth,
                      )),
                  title: Text(
                    'Consultorio',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.8,
                        color: Colors.black54),
                  ),
                  subtitle: Text('Fotos del consultorio y salas'),
                ),
                Divider(),
                ListTile(
                  leading: SizedBox(
                      height: 200.0,
                      width: 90.0, // fixed width and height
                      child: Image.asset(
                        "assets/images/cita.png",
                        fit: BoxFit.fitWidth,
                      )),
                  title: Text(
                    'Pide Una Cita',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.8,
                        color: Colors.black54),
                  ),
                  subtitle: Text('Contacta con nuestra atencion al cliente'),
                ),
                Divider(),
                ListTile(
                  leading: SizedBox(
                      height: 200.0,
                      width: 90.0, // fixed width and height
                      child: Image.asset(
                        "assets/images/mision.png",
                        fit: BoxFit.fitWidth,
                      )),
                  title: Text('Nuestra Misio y Vision',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.8,
                      color: Colors.black54),),
                  subtitle:
                      Text('Informacion de institucional del Consultorio'),
                ),
                Divider(),
                ListTile(
                  leading: SizedBox(
                      height: 200.0,
                      width: 90.0, // fixed width and height
                      child: Image.asset(
                        "assets/images/medical.png",
                        fit: BoxFit.fitWidth,
                      )),
                  title: Text('Staft de Doctores',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.8,
                      color: Colors.black54),),
                  subtitle: Text(
                      'Conoce nuestro staft de doctores, que te atenderemos.'),
                ),
                Divider(),
                ListTile(
                  leading: SizedBox(
                      height: 230.0,
                      width: 90.0, // fixed width and height
                      child: Image.asset(
                        "assets/images/tratamientos2.png",
                        fit: BoxFit.fitWidth,
                      )),
                  title: Text('Tratamientos',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.8,
                      color: Colors.black54),),
                  subtitle: Text('Mira nuestros tratamientos.'),
                ),
                Divider(),
                ListTile(
                  leading: SizedBox(
                      height: 200.0,
                      width: 90.0, // fixed width and height
                      child: Image.asset(
                        "assets/images/dinero1.jpg",
                        fit: BoxFit.cover,
                      )),
                  title: Text('Gana Dinero con nosotros',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.8,
                      color: Colors.black54),),
                  subtitle: Text(
                      'Tenemos un programa de recompensa por recomendaciones.'),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add_comment),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Container(
//            height: 300,
//            decoration: BoxDecoration(
//                image: DecorationImage(
//                    image: AssetImage(
//                      "assets/images/consultorio1.jpg",
//                    ),
//                    fit: BoxFit.fill)),
//          ),
//          Container(
//            height: 100.0,
//            child: ListView(
//              scrollDirection: Axis.horizontal,
//              children: <Widget>[
//                Container(
//                  padding: EdgeInsets.all(10),
//                  width: 100.0,
//                  decoration: BoxDecoration(
//                    image: DecorationImage(
//                      image: AssetImage("assets/images/caugh.png")
//                    ),
//                    borderRadius: BorderRadius.circular(15),
//                    color: Colors.white,
//                    boxShadow: [
//                      BoxShadow(
//                        offset: Offset(0, 10),
//                        blurRadius: 5,
//                        color: Colors.black26,
//                      )
//                    ],
//                  ),
//                ),
//                Container(
//                  padding: EdgeInsets.all(20),
//                  width: 100.0,
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(15),
//                    color: Colors.cyanAccent,
//                    boxShadow: [
//                      BoxShadow(
//                        offset: Offset(0, 10),
//                        blurRadius: 10,
//                        color: Colors.black26,
//                      )
//                    ],
//                  ),
//                ),
//                Container(
//                  padding: EdgeInsets.all(10),
//                  width: 100.0,
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(15),
//                    color: Colors.white,
//                    boxShadow: [
//                      BoxShadow(
//                        offset: Offset(0, 10),
//                        blurRadius: 10,
//                        color: Colors.black26,
//                      )
//                    ],
//                  ),
//                ),
//                Container(
//                  padding: EdgeInsets.all(10),
//                  width: 100.0,
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(15),
//                    color: Colors.white,
//                    boxShadow: [
//                      BoxShadow(
//                        offset: Offset(0, 10),
//                        blurRadius: 10,
//                        color: Colors.black26,
//                      )
//                    ],
//                  ),
//                )
//              ],
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}
