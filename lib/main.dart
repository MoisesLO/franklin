import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:franklin/OptionsCard.dart';
import 'package:franklin/pages/photo.dart';
import 'package:franklin/pages/consultorio.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:franklin/pages/cita.dart';
import 'package:franklin/pages/mision.dart';
import 'package:franklin/pages/staff.dart';
import 'package:franklin/pages/tratamientos.dart';
import 'package:franklin/pages/dinero.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/photo': (context) => Photo(ModalRoute.of(context).settings.arguments),
        '/consultorio': (context) => Consultorio(),
        '/cita': (context) => Cita(),
        '/mision': (context) => Mision(),
        '/staff': (context) => Staff(),
        '/tratamientos': (context) => Tratamientos(),
        '/dinero': (context) => Dinero(),
      },
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
  Future<void> _launched;
  String _phone = '';
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://api.whatsapp.com/send?phone=51948472767&text=Hola%20quisiera%20hacer%20una%20consulta&source=&data=&app_absent=';
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
                  image: 'consultorio.jpg',
                  url: '/consultorio',
                ),
                OptionCard(
                  title: 'Pide Una Cita',
                  description: 'Contacta con nuestra atencion al cliente',
                  image: 'cita.png',
                  url: '/cita',
                ),
                OptionCard(
                  title: 'Nuestra Misio y Vision',
                  description: 'Informacion de institucional del Consultorio',
                  image: 'mision.png',
                  url: '/mision',
                ),
                OptionCard(
                  title: 'Staft de Doctores',
                  description:
                  'Conoce nuestro staft de doctores, que te atenderemos.',
                  image: 'medica1.png',
                  url: '/staff',
                ),
                OptionCard(
                  title: 'Tratamientos',
                  description: 'Mira nuestros tratamientos.',
                  image: 'tratamientos.jpg',
                  url: '/tratamientos',
                ),
                OptionCard(
                  title: 'Gana Dinero con nosotros',
                  description:
                  'Tenemos un programa de recompensa por recomendaciones.',
                  image: 'dinero1.jpg',
                  url: '/dinero',
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _launched = _launchInBrowser(toLaunch);
        }),
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
