import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {
  static const String routerName = 'Perfil';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _NuevoTel = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil'),
      ),
      drawer: const SideMenu(),
      body: Column(
        children: [
          _ProfileBox(),
          const SizedBox(height: 20),
          const Text(
            'Nombre de usuario',
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(height: 20),
          const Text(
            'Carrera inscrita',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.account_circle),
              Text(
                'Usuario',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            '2019351636',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.mail),
              Text(
                'Correo',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'ejemplo@ejemplo.com',
                style: TextStyle(fontSize: 20),
              ),
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25)),
                      ),
                      builder: (BuildContext ctx) {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: 25,
                            left: 20,
                            right: 20,
                            bottom: MediaQuery.of(ctx).viewInsets.bottom+20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Ingresa tu nuevo correo", style: TextStyle(fontSize: 20),),
                                const SizedBox(height: 20),
                                TextFormField(
                                    decoration: const InputDecoration(
                                    hintText: 'Nuevo correo electronico',                                    
                                  ),
                                ),
                                const SizedBox(height: 20),
                                SizedBox(
                                  child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF386641),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(30))),
                                  child: const Text("ACTUALIZAR"),
                                  onPressed: () {}),
                                )
                              ],
                            ),
                        );
                      }
                    );
                },
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.phone),
              Text(
                'Numero de contacto',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '5555555555',
                style: TextStyle(fontSize: 20),
              ),
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25)),
                      ),
                      builder: (BuildContext ctx) {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: 25,
                            left: 20,
                            right: 20,
                            bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Ingresa tu nuevo telefono", style: TextStyle(fontSize: 20),),
                                const SizedBox(height: 20),
                                TextFormField(
                                  //autofocus: true,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    hintText: 'Numero telefonico a 10 digitos',
                                    helperText: 'Sólo numeros'
                                  ),
                                ),
                                const SizedBox(height: 20),
                                SizedBox(
                                  child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF386641),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(30))),
                                  child: const Text("ACTUALIZAR"),
                                  onPressed: () {}),
                                )
                              ],
                            ),
                        );
                      }
                    );
                },
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class _ProfileBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Container(
        width: double.infinity,
        height: 280,
        decoration: _Decoracion(),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const CircleAvatar(
              maxRadius: 70,
              backgroundImage: NetworkImage(
                  'https://www.elfutbolero.com.mx/__export/1659032045073/sites/elfutboleromx/img/2022/07/28/alexis-vega-dudo-responder-senalamientos.jpg_1339198937.jpg'),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Cambiar foto de perfil',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _Decoracion() => const BoxDecoration(
      color: Color(0xFF9E2A2B),
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)));
}
