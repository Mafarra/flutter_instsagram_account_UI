import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Mamdouh Alfarra'),
            accountEmail: Text('mam.farra2030@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/Mamdouh alfarra.jpg'),
            ),
          ),
          ListTile(
            title: Text('All Tasks'),
            subtitle: Text('All Tasks I Have'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () {},
            title: Text('Complete Tasks'),
            subtitle: Text('All Tasks I Have already done'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () {},
            title: Text('Incomplete Tasks'),
            subtitle: Text('All Tasks I Have not done'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Spacer(),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: Text('Logout'),
            trailing: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
