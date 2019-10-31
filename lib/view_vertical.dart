import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interface_example/content.dart';
import 'package:interface_example/filterbar.dart';
import 'package:interface_example/paginator.dart';
import 'package:interface_example/toolbar.dart';

class ViewVertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Toolbar(),
        Filterbar(),
        Content(),
        Paginator(),
      ],
    );
  }
}
