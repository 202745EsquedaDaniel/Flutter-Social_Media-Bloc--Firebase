import 'package:flutter/material.dart';
import 'package:myapp/features/post/presentation/components/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              // app logo
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50.0),
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              Divider(color: Theme.of(context).colorScheme.secondary),

              //home list time
              MyDrawerTile(
                title: "H O M E ",
                icon: Icons.home,
                onTap: () => Navigator.of(context).pop(), //
              ),

              //Profile tile
              MyDrawerTile(
                title: "P R O F I L E ",
                icon: Icons.person,
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              //S E A R C H tile
              MyDrawerTile(
                title: "S E A R C H",
                icon: Icons.search,
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              //S E A R C H tile
              MyDrawerTile(
                title: "S E T T I N G S",
                icon: Icons.settings,
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              const Spacer(),

              // logout list tile
              MyDrawerTile(
                title: "L O G O U T",
                icon: Icons.logout,
                onTap: () {}, //
              ),

              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
