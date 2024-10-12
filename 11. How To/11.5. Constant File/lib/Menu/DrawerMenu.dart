import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/ColorsApp.dart';
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
      backgroundColor: menuNavColors,
      surfaceTintColor: menuNavColors,
      child: ListView(
        children: [
           const UserAccountsDrawerHeader(
            arrowColor: Colors.white,
            decoration: BoxDecoration(
                color: drawPictureColors
            ),
            accountName:  Text("dany Zambrano"),
            accountEmail:  Text("danyzambranososa@gmail.com"),
            currentAccountPicture:  CircleAvatar(
              backgroundImage: AssetImage("assets/images/dog.jpg"),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white),
            title: const Text(
              "Home",
              style: TextStyle(color: Colors.white),
              ),
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
