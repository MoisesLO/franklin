import 'package:flutter/material.dart';

class Cita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 220,
            flexibleSpace: Image.asset(
              "assets/images/cita1.jpg",
              fit: BoxFit.cover,
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Pedir Cita
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 30),
                  child: Text(
                    'Pida Una Cita',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                // Descripcion
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    'Puedes pedir una cita al consultorio llamando a los numeros a continuacion o escribiendo al numero de whatsapp \n \nNumeros \n \n- 9456554327 \n \n- 9456554327 \n \n- 9456554327 \n \n- 9456554327',
                    style: TextStyle(fontSize: 17, height: 1.3),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
