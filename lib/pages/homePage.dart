import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/aboutUs.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to canteen management system'),
        ),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("payal"),
                accountEmail: new Text("payal.beceg129@gmail.com"),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage(""),
                ),
              ),
              new ListTile(
                title: new Text("Profile"),
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
              new ListTile(
                title: new Text("Canteen"),
                onTap: () {
                  Navigator.pushNamed(context, '/canteen');
                },
              ),
              new ListTile(
                title: new Text("My orders"),
                onTap: () {
                  Navigator.pushNamed(context, '/myorders');
                },
              ),
              new ListTile(
                title: new Text("About us"),
                onTap: () {
                  Navigator.pushNamed(context, '/aboutus');
                },
              ),
              new ListTile(
                title: new Text("Theme"),
                onTap: () {
                  Navigator.pushNamed(context, '/theme');
                },
              ),
              new ListTile(
                title: new Text("cart"),
                onTap: () {
                  Navigator.pushNamed(context, '/cart');
                },
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
