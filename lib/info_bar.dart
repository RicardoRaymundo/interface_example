import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(width: 0.2, color: Color(0xFFFF000000)),
        ),
      ),
      child: Center(child: Text('Info Bar')),
    );
  }
}
