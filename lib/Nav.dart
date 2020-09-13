import 'package:flutter/material.dart';
import 'package:musica/Home.dart';
import 'package:musica/User.dart';
import './Autor.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Row(
          children: [
            NavigationRail(
              minWidth: 10,
              elevation: 100.0,
              backgroundColor: Colors.grey[800],
              labelType: NavigationRailLabelType.selected,
              groupAlignment: 0,
              destinations: <NavigationRailDestination>[
                NavigationRailDestination(
                    icon: Icon(Icons.home, color: Colors.white),
                    label: Text(
                      "Home",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.music_video,
                    color: Colors.white,
                  ),
                  label: Text("Autor", style: TextStyle(color: Colors.white)),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  ),
                  label: Text("User", style: TextStyle(color: Colors.white)),
                ),
              ],
              selectedIndex: _selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
            ),
            _selectedIndex == 0
                ? Home()
                : _selectedIndex == 1
                    ? Autor()
                    : _selectedIndex == 2 ? User() : Text("")
          ],
        ));
  }
}
