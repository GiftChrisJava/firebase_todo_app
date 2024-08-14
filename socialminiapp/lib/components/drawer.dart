// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // drawer header
              DrawerHeader(
                  child: Icon(
                Icons.favorite,
                color: Theme.of(context).colorScheme.inversePrimary,
              )),

              const SizedBox(
                height: 25,
              ),

              // home tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  title: Text('H O M E'),
                  onTap: () => {
                    // this is already the home screen just pop the drawer
                    Navigator.pop(context),

                    // navigate to the home page
                    Navigator.pushNamed(context, "/home_page")
                  },
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // profile tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  title: Text('P R O F I L E'),
                  onTap: () => {
                    // this is already the home screen just pop the drawer
                    Navigator.pop(context),

                    // navigate to profile page
                    Navigator.pushNamed(context, "/profile_page"),
                  },
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // users tile
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.group,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  title: Text('U S E R S'),
                  onTap: () => {
                    // this is already the home screen just pop the drawer
                    Navigator.pop(context),

                    // navigate to users page
                    Navigator.pushNamed(context, "/users"),
                  },
                ),
              ),

              const SizedBox(
                height: 25,
              ),
            ],
          ),
          // logout tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25),
            child: ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: Text('L O G O U T'),
              onTap: () => {
                // this is already the home screen just pop the drawer
                Navigator.pop(context),

                // navigate to profile page
                Navigator.pushNamed(context, "/login_or_register"),
              },
            ),
          ),
        ],
      ),
    );
  }
}
