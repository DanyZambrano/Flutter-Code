import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/Routers.dart';
import 'package:flutter_widgets/generated/l10n.dart';
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
            accountName: Text("Dany Zambrano"),
            accountEmail: Text("danyzambranososa@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/dog.jpg"),
            ),
          ),
           ListTile(
            leading: const Icon(Icons.home),
            title: Text(S.of(context).INTL_FACTURAS),
            onTap: () {
              context.pushReplacement(ROUTE_HOME);
            },
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: Text(S.of(context).INTL_REPORTES),
            onTap: () {
              context.pushReplacement(ROUTE_LOGIN);
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_box),
            title: Text(S.of(context).INTL_PERFIL),
            onTap: () {
              context.pushReplacement(ROUTE_PERFIL);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(S.of(context).INTL_CONFIGURACION),
            onTap: () {
              context.pushReplacement(ROUTE_SETTING);
            },
          ),
        ],
      ),
    );
  }
}
