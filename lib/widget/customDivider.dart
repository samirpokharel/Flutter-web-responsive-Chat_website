import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).dividerColor,
      width: 1,
    );
  }
}
