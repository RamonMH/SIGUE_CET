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
  String Usuario = '';
  String pass = '';

  String usuVal = 'admin';
  String passVal = 'admin';

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void login() {
    FormState? formState = formKey.currentState;

    if (formState!.validate()) {
      formState.save();

      if (usuVal == Usuario && passVal == pass) {
        Navigator.pushReplacementNamed(context, InicioScreen.routerName);
      } else {
        print('Credenciales incorrectas');
      }

      print('Usuario: $Usuario');
      print('Contrasenia $pass');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Form(
            key: formKey,
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
                const Text("Ingresa tus credenciales",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: TextInputDecoration.copyWith(
                      labelText: "Usuario",
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color(0xFF386641),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Campo requerido";
                    }
                  },
                  onSaved: (value) => Usuario = value!,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: TextInputDecoration.copyWith(
                      labelText: "Contraseña",
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xFF386641),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Campo requerido";
                    }
                  },
                  onSaved: (value) => pass = value!,
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
