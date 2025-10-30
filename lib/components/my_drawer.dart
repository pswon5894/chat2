import 'package:flutter/material.dart';

import '../auth/auth_service.dart';
import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    //get auth service
    final _auth = AuthService();
    _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Column(
           children: [
             // logo
             DrawerHeader(
               child: Center(
                 child: Icon(
                   Icons.message,
                   color: Theme.of(context).colorScheme.primary,
                   size: 40,
                 ),
               ),
             ),

             // home list tile
             Padding(
               padding: const EdgeInsets.only(left: 25.0),
               child: ListTile(
                 title: Text("H O M E"),
                 leading: Icon(Icons.home),
                 onTap: () {
                   // pop the drawer
                   Navigator.pop(context);
                 },
               ),
             ),

             // settings list tile
             Padding(
               padding: const EdgeInsets.only(left: 25.0),
               child: ListTile(
                 title: Text("S E T T I N G S"),
                 leading: Icon(Icons.settings),
                 onTap: () {
                   // pop the drawer
                   Navigator.pop(context);
                   
                   // navigate to settings page
                   Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) => SettingsPage(),
                       )
                   );
                 },
               ),
             ),
           ],
         ),

          // logout list tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25),
            child: ListTile(
              title: const Text("L O G O U T"),
              leading: const Icon(Icons.logout),
              onTap: logout,
            ),
          ),
        ],
      )
    );
  }
}
