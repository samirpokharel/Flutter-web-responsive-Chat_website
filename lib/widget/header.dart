import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Header extends StatelessWidget {
  final DeviceScreenType deviceScreenType;
  final Function openDrawer;

  const Header({Key key, this.deviceScreenType, this.openDrawer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            height: 100,
            width: double.infinity,
            child: Row(
              children: [
                if (deviceScreenType == DeviceScreenType.mobile)
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () => openDrawer(),
                  ),
                SizedBox(width: 20),
                Icon(
                  Icons.message,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(width: 20),
                Text(
                  "Messaging",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                deviceScreenType == DeviceScreenType.mobile ||
                        deviceScreenType == DeviceScreenType.tablet
                    ? IconButton(icon: Icon(Icons.search), onPressed: () {})
                    : Container(
                        constraints: BoxConstraints(maxWidth: 120),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            suffixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                SizedBox(width: 20),
                Stack(
                  children: [
                    Icon(Icons.notifications, size: 30),
                    Positioned(
                      top: 4,
                      right: 1,
                      child: Container(
                        height: 17,
                        width: 17,
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1494790108377"
                    "-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8"
                    "fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
