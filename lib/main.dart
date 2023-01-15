import 'package:flutter/material.dart';
import 'package:sigue_cet/screens/screens.dart';
import 'package:sigue_cet/tema/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen
      (),
      routes: {
        LoginScreen.routerName: (_) => LoginScreen(),
        InicioScreen.routerName: (_) => InicioScreen(),
        CalendarioScreen.routerName: (_) => const CalendarioScreen(),
        ProfileScreen.routerName: (_) => const ProfileScreen(),
      },
      theme: AppTheme.lightTheme,
    );
  }
}
