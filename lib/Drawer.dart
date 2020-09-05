import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text(
          //     "Hi, PM",
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 25),
          //   ),

          //   decoration: BoxDecoration(
          //     color: Colors.deepPurple),
          // ),

          UserAccountsDrawerHeader(
              accountName: Text(
                "Priyank Mithaiwala",
                style: TextStyle(fontSize: 20),
              ),
              accountEmail: Text("pm@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/profile.jpg"),
              )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("pm@gmail.com"),
            trailing: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
