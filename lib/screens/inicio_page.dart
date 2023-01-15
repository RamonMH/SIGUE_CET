import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sigue_cet/screens/screens.dart';
import '../widgets/widgets.dart';

class InicioScreen extends StatelessWidget {
  static const String routerName = 'Home';

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  InicioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9E2A2B),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hola [NOMBRE ALUMNO] !',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('01 de Enero de 2023',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 122, 123),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: const Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, LoginScreen.routerName);
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Accesos rápidos',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 193, 122, 123),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12),
                          child: const Center(
                            child: Icon(
                              Icons.calendar_month,
                              size: 70,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(
                              context, CalendarioScreen.routerName);
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text('Calendario',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 193, 122, 123),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12),
                          child: const Center(
                            child: Icon(
                              Icons.person,
                              size: 70,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(
                              context, ProfileScreen.routerName);
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Mi Pefil',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
                    const Text('"La técnica al servicio de la patria"',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      height: 250,
                    ),
                    Column(
                      children: const [
                        SizedBox(height: 8,),
                        Text('Consulta tu ID digital aqui',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.perm_identity),
        elevation: 0,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25)),
              ),
              builder: (context) => DraggableScrollableSheet(
                  expand: false,
                  initialChildSize: 0.7,
                  maxChildSize: 0.9,
                  minChildSize: 0.32,
                  builder: (context, scollController) => SingleChildScrollView(
                        controller: scollController,
                        child: const IdContent(),
                      )));
        },
      ),
    );
  }
}
