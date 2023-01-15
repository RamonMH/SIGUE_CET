import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sigue_cet/screens/screens.dart';
import 'package:sigue_cet/widgets/login_widgets.dart';
import 'package:http/http.dart' as http;
//import 'dart:async';

class LoginScreen extends StatefulWidget {
  static const String routerName = 'Login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Future login() async {
    try {
      var url = Uri.parse("http://192.168.1.254/sigue/login.php");
      var response = await http.post(url, body: {
        "user": userController.text,
        "pass": passController.text,
      }).timeout(const Duration(seconds: 90));

      var data = json.encode(response.body);

      if (data == "Success") {
        Navigator.pushReplacementNamed(context, InicioScreen.routerName);
      } else if (data == "Error") {
        Scaffold.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.red,
              content: Row(
                children: const [
                  Icon(Icons.error_outline),
                  Text("Usuario y/o contraseña incorrectas"),
                ],
              )),
        );
      }
    } on TimeoutException catch (e) {
      print('Tarda mucho la conexion');
    } on Error catch (e) {
      print('Http error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "SIGUE CET",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Bienvenidx a la nueva experiencia digital del CET 1",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset("assets/login.png"),
                const SizedBox(
                  height: 50,
                ),
                const Text("Ingresa tus credenciales", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: userController,
                  decoration: TextInputDecoration.copyWith(
                      labelText: "Usuario",
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color(0xFF386641),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passController,
                  obscureText: true,
                  decoration: TextInputDecoration.copyWith(
                      labelText: "Contraseña",
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xFF386641),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF386641),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: const Text("INGRESAR"),
                      onPressed: () {
                        login();
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
