import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.black54,
            ),
            title: Text("Home",
                style: TextStyle(
                  color: Colors.black54,
                )),
            selectedColor: Colors.black,
          ),
          SalomonBottomBarItem(
            icon: Icon(
              Icons.local_florist,
              size: 30,
              color: Colors.black54,
            ),
            title: Text("Actions",
                style: TextStyle(
                  color: Colors.black54,
                )),
            selectedColor: Colors.black,
          ),
          SalomonBottomBarItem(
            icon: Icon(
              Icons.precision_manufacturing,
              size: 30,
              color: Colors.black54,
            ),
            title: Text("Materiel",
                style: TextStyle(
                  color: Colors.black54,
                )),
            selectedColor: Colors.black,
          ),
        ]);
  }
}
