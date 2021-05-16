import 'package:flutter/material.dart';
import 'package:messaging_app/chat_scrren.dart';
import 'package:messaging_app/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: KColor.primaryColor,
        iconTheme: IconThemeData(color: KColor.iconColor),
      ),
      home: ChatBody(),
    );
  }
}
