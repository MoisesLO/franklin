import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:franklin/OptionsCard.dart';

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
                OptionCard(
                    title: 'Consultorio',
                    description: 'Fotos del consultorio y salas',
                    image: 'about.jpg'),
                OptionCard(
                    title: 'Pide Una Cita',
                    description: 'Contacta con nuestra atencion al cliente',
                    image: 'cita.png'),
                OptionCard(
                    title: 'Nuestra Misio y Vision',
                    description: 'Informacion de institucional del Consultorio',
                    image: 'mision.png'),
                OptionCard(
                    title: 'Staft de Doctores',
                    description: 'Conoce nuestro staft de doctores, que te atenderemos.',
                    image: 'medica1.png'),
                OptionCard(
                    title: 'Tratamientos',
                    description: 'Mira nuestros tratamientos.',
                    image: 'tratamientos2.png'),
                OptionCard(
                    title: 'Gana Dinero con nosotros',
                    description: 'Tenemos un programa de recompensa por recomendaciones.',
                    image: 'dinero1.jpg'),
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
