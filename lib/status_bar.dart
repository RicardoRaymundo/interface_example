import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 0.2, color: Color(0xFFFF000000)),
        ),
      ),
      child: Center(child: Text('Status Bar')),
    );
  }
}
