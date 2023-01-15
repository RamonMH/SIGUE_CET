import 'package:flutter/material.dart';
import 'package:sigue_cet/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF386641),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          const Divider(thickness: 0.5, height: 10, color: Colors.grey),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.home_filled, color: Colors.white),
            title: const Text(
              'Inicio',
              style: (TextStyle(color: Colors.white)),
            ),
            onTap: () {
              Navigator.pushNamed(context, InicioScreen.routerName);
            },
          ),
          ListTile(
            leading:
                const Icon(Icons.calendar_today_outlined, color: Colors.white),
            title: const Text(
              'Calendario',
              style: (TextStyle(color: Colors.white)),
            ),
            onTap: () {
              Navigator.pushNamed(context, CalendarioScreen.routerName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.white),
            title: const Text(
              'Perfil',
              style: (TextStyle(color: Colors.white)),
            ),
            onTap: () {
              Navigator.pushNamed(context, ProfileScreen.routerName);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(thickness: 0.5, height: 10, color: Colors.grey),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app, color: Colors.white),
            title: const Text(
              'Salir',
              style: (TextStyle(color: Colors.white)),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, LoginScreen.routerName);
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Row(
        children: [
          const CircleAvatar(
            maxRadius: 40,
            backgroundImage: NetworkImage(
                'https://www.elfutbolero.com.mx/__export/1659032045073/sites/elfutboleromx/img/2022/07/28/alexis-vega-dudo-responder-senalamientos.jpg_1339198937.jpg'),
          ),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Nombre del alumno',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Boleta o usuario',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
