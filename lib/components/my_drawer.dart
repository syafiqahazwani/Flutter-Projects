import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_drawer_tile.dart';
import 'package:flutter_application_1/services/auth/auth_service.dart';
import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  // logout method
  void logout(BuildContext context) {
    final authService = AuthService();
    authService.signOut();

    // Optionally pop drawer and go back to login
    Navigator.pop(context); // close drawer
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

            //home list tile
            MyDrawerTile(
              text: "H O M E", 
              icon: Icons.home,
               onTap: () => Navigator.pop(context),
               ),

            //setting list tile
            MyDrawerTile(
              text: "S E T T I N G S", 
              icon: Icons.settings,
               onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                    ),
                  );
               },
               ),

               const Spacer(),

            //logout list tile
            MyDrawerTile(
              text: "L O G O U T", 
              icon: Icons.logout,
               onTap: () => logout(context),
               ),

               const SizedBox(height: 25),
        ],
      ),
    );
  }
}