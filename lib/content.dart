import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interface_example/content_page_a.dart';

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  PageController pageController = PageController(initialPage: 0, keepPage: false);

  List<Color> pagesColor = [
    Colors.blue,
    Colors.greenAccent,
    Colors.amber,
    Colors.blueGrey,
    Colors.white,
    Colors.red,
    Colors.deepOrangeAccent,
    Colors.lightGreen,
  ];

  /// TODO : Implementar essa barra de botoes quando conseguir colocar acima da PageView
  Widget buildButtons() {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 8.0,
      children: this.pagesColor
          .map((color) =>
          RaisedButton(
            onPressed: () {
              this.pageController.jumpToPage(pagesColor.indexOf(color));
            },
          ))
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:
            //buildButtons(),
            PageView.builder(
              controller: this.pageController,

              /// Desabilita troca de pagina por scroll
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, position) {
                print(position);
                return ContentPageA(pageController: this.pageController, pagesColor: this.pagesColor, position: position,);
              },
            ),
         );
  }
}
