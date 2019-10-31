import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          right: BorderSide(width: 0.2, color: Color(0xFFFF000000)),
        ),
      ),
      child: Center(child: Text('Side Nav')),
    );
  }
}
