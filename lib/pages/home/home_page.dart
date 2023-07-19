import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.cyan, Colors.greenAccent])),
            child: Column(
              children: [
                ClipPath(
                  clipper: DiagonalPathClipperTwo(),
                  child: Container(
                    color: Colors.white,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'images/logo_app.png',
                          width: 150,
                          height: 100,
                        ),
                        Text(
                          'Facil y Rapido',
                          style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  'SELECCIONA TU ROL',
                  style: TextStyle(color: Colors.white,
                      fontSize: 20,
                    fontFamily: 'OneDay'
                  ),
                ),
                SizedBox(height: 30),
                CircleAvatar(
                  backgroundImage: AssetImage('images/pasajero.png'),
                  radius: 50,
                  backgroundColor: Colors.grey[500],
                ),
                SizedBox(height: 10),
                Text(
                  'Cliente',
                  style: TextStyle(color: Colors.white,
                  fontSize: 16),
                ),
                SizedBox(height: 30),
                CircleAvatar(
                  backgroundImage: AssetImage('images/driver.png'),
                  radius: 50,
                  backgroundColor: Colors.grey[500],
                ),
                SizedBox(height: 10),
                Text(
                  'Conductor',
                  style: TextStyle(color: Colors.white,
                      fontSize: 16),
                )
              ],
            ),
          ),
        ));
  }
}
