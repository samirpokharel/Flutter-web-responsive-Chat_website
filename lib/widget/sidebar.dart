
import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Column(
        children: [
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          Spacer(),
          Column(
            children: List.generate(
              items.length,
              (index) => _buildMenuItem(index),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget _buildMenuItem(int index) {
    bool isSelected = selectedIndex == index;
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color:
            isSelected ? Theme.of(context).primaryColor.withOpacity(.1) : null,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            color: isSelected ? Theme.of(context).primaryColor : null,
            icon: Icon(items[index].icon),
            onPressed: () {
              setState(() => selectedIndex = index);
            },
          ),
        ),
      ),
    );
  }
}

class MenuItem {
  String title;
  IconData icon;

  MenuItem(this.title, this.icon);
}

List<MenuItem> items = [
  MenuItem("Dashboard", Icons.dashboard),
  MenuItem("Report", Icons.graphic_eq),
  MenuItem("Business", Icons.auto_stories),
  MenuItem("Media", Icons.perm_media_rounded),
  MenuItem("Messaging", Icons.message)
];
