import 'package:flutter/material.dart';
import 'package:flutter_widgets/Common/ColorsApp.dart';
import 'package:flutter_widgets/Common/Routers.dart';
import 'package:go_router/go_router.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  
  const AppBarWidget({super.key, required this.title});
  final String title;
 
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: const TextStyle(color: Colors.white)),
      backgroundColor: appBarColors,
      centerTitle: true,
      actions: [
        PopupMenuButton(
          itemBuilder:(context) => [


            PopupMenuItem(
              child: const ListTile(
                leading: Icon(Icons.ac_unit_outlined),
                title: Text("Language")
              ),
              
              onTap: () {
                context.pushReplacement(ROUTE_LANGUAGE);
              },
            ),


            PopupMenuItem(
              child: const ListTile(
                leading: Icon(Icons.access_time_filled_outlined),
                title: Text("About")
              ),
              
              onTap: () {
                context.pushReplacement(ROUTE_ABOUT);
              },
            ),



            PopupMenuItem(
              child: const ListTile(
                leading: Icon(Icons.add_to_photos_outlined),
                title: Text("Logout")
              ),
              
              onTap: () {
                context.pushReplacement(ROUTE_LOGOUT);
              },
            ),
          ]
        )
      ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}
