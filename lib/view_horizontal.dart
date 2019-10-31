import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interface_example/content.dart';
import 'package:interface_example/filterbar.dart';
import 'package:interface_example/info_bar.dart';
import 'package:interface_example/paginator.dart';
import 'package:interface_example/side_nav.dart';
import 'package:interface_example/toolbar.dart';
import 'package:interface_example/view_vertical.dart';

class ViewHorizontal extends StatelessWidget {
  double sidenavWidth = 100;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          bottom: 0,
          left: sidenavWidth,
          right: 45,
          child: ViewVertical(),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          width: 45,
          child: InfoBar(),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          width: sidenavWidth,
          child: SideNav(),
        ),
      ],
    );
  }
}
