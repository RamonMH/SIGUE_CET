import 'package:flutter/material.dart';

class IdContent extends StatelessWidget {

  const IdContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      /*child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),*/
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                width: 100,
                height: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 55),
              child: Column(
                children: const[
                  //_IdFoto(usuarios.foto),
                  Image(image:  NetworkImage('https://st.depositphotos.com/2069323/2156/i/600/depositphotos_21568765-stock-photo-casual-businessman-pointing.jpg'), width: 110,),
                  SizedBox(height: 30,),
                  Text('Nombre del alumno', style: TextStyle(color: Colors.black, fontSize: 25),),
                  //_Nombre(usuarios.name),
                  SizedBox(height: 10,),
                  Text('Boleta', style: TextStyle(color: Colors.black, fontSize: 25)),
                  SizedBox(height: 10,),
                  Text('Carrera', style: TextStyle(color: Colors.black, fontSize: 25)),
                  SizedBox(height: 25,),
                  Text('Codigo de acceso', style: TextStyle(color: Colors.black, fontSize: 12)),
                  SizedBox(height: 7,),
                  Image(image:  NetworkImage('https://es.qr-code-generator.com/wp-content/themes/qr/new_structure/markets/core_market/generator/dist/generator/assets/images/websiteQRCode_noFrame.png'), width: 150,),
                ],
              ),
            )
          ],
        ),
      //),
    );
  }
}