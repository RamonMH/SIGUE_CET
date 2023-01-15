import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

class CalendarioScreen extends StatefulWidget{

  static const String routerName = 'Calendario';

  const CalendarioScreen({Key? key}) : super(key: key);

  @override
  State<CalendarioScreen> createState() => _CalendarioScreenState();
}

class _CalendarioScreenState extends State<CalendarioScreen> {
  double _scale = 1.0;
  double _previousScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendario academico'),
      ),
      drawer: SideMenu(),
      body: Column(
        children: [

          const SizedBox(height: 20,),

          const Text('Calendario ciclo escolar 23/1 - 23/2', style: TextStyle(fontSize: 20),),

          const SizedBox(height: 90,),

          GestureDetector(
            onScaleStart: (ScaleStartDetails details){
              _previousScale=_scale;
              setState((){});
            },

            onScaleUpdate: (ScaleUpdateDetails details){
              _scale=_previousScale*details.scale;
              setState((){});
            },

            onScaleEnd: (ScaleEndDetails details){
              _previousScale=1.0;
              setState((){});
            },
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child:Transform(
                  alignment: FractionalOffset.center,
                  transform: Matrix4.diagonal3(Vector3(_scale, _scale, _scale)),
                  child: const Image(image: AssetImage('assets/calendario.jpg'),),
                )
            ),
          ),

        ],
      ),
    );
  }
}