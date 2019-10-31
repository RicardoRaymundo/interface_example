import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.2, color: Color(0xFFFF000000)),
        ),
      ),
      height: 40,
      width: double.infinity,
      child: Center(child: Text('Toolbar')),
    );
  }
}
