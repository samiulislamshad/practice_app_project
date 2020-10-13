import 'package:flutter/material.dart';
import 'package:practice_app_project/authentication_service.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[500],
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new ListTile(
              title: FlatButton(
                onPressed: () {
                  Provider.of<AuthenticationService>(context, listen: false).signOut();
                },
                child: Text("Sign Out"),
              ),
              trailing: Icon(Icons.time_to_leave),
            ),
            new ListTile(
              title: Text("Option1"),
              trailing: Icon(Icons.fastfood),
            ),
            new ListTile(
              title: Text("Option2"),
              trailing: Icon(Icons.remove_red_eye),
            )



          ],
        ),
      ),
      body: Center(
        child: Text("HOME LAYOUT"),
      ),
    );
  }
}
