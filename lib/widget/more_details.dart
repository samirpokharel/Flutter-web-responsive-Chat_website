import 'package:flutter/material.dart';
import 'package:messaging_app/widget/chatMember.dart';

class MoreDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TabBar(
                labelColor: Theme.of(context).primaryColor,
                unselectedLabelColor: Colors.grey[700],
                indicatorColor: Theme.of(context).primaryColor,
                tabs: [
                  Tab(text: "Chat Members"),
                  Tab(text: "Shared Files"),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Members".toUpperCase(),
                      style: TextStyle(
                        color: Theme.of(context).iconTheme.color,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 30),
                    Column(
                      children: List.generate(
                        3,
                        (index) => MemberCard(
                          showJob: true,
                          member: members[index],
                          trailing: Container(
                            child: Material(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(.1),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  color: Theme.of(context).primaryColor,
                                  icon: Icon(Icons.message),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Admins".toUpperCase(),
                          style: TextStyle(
                            color: Theme.of(context).iconTheme.color,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.edit_outlined),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: List.generate(
                        1,
                        (index) => MemberCard(
                          showJob: true,
                          member: members[index],
                          trailing: Container(
                            child: Material(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(.1),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  color: Theme.of(context).primaryColor,
                                  icon: Icon(Icons.message),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    ListTile(
                      title: Text(
                        "Customize Chat",
                        style: TextStyle(
                          color: Color(0xff78A1C6),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Change Layout and Colors",
                        style: TextStyle(
                          color: Color(0xff78A1C6).withOpacity(.7),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Privacy and Support",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("Get immediate support"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
