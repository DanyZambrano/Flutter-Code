import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/Routers.dart';
import 'package:go_router/go_router.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => DrawerMenuState();
}

class DrawerMenuState extends State<DrawerMenu> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:  [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 58, 89, 113),
            ),
            arrowColor: Colors.white,
            accountName: Text("dany Zambrano"),
            accountEmail: Text("danyzambranososa@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/dog.jpg"),
            ),
          ),
           ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              context.pushReplacement(ROUTE_HOME);
            },
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text("Login"),
            onTap: () {
              context.pushReplacement(ROUTE_LOGIN);
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text("Perfil"),
            onTap: () {
              context.pushReplacement(ROUTE_PERFIL);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Setting"),
            onTap: () {
              context.pushReplacement(ROUTE_SETTING);
            },
          ),
        ],
      ),
    );
  }
}