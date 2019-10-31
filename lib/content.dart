import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  PageController _pageController = PageController(initialPage: 0, keepPage: false);

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
      children: pagesColor
          .map((color) =>
          RaisedButton(
            onPressed: () {
              _pageController.jumpToPage(pagesColor.indexOf(color));
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
              controller: _pageController,

              /// Desabilita troca de pagina por scroll
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, position) {
                return Container(
                  color: pagesColor[position],
                  child: Center(
                    child: Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            _pageController.previousPage(duration: Duration(seconds: 1), curve: Curves.ease);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0), side: BorderSide(color: Colors.red)),
                          child: Icon(Icons.chevron_left),
                        ),
                        Spacer(),
                        Text('Página: ' + (position+1).toString()),
                        Spacer(),
                        RaisedButton(
                          onPressed: () {
                            _pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.ease);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Icon(Icons.chevron_right),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
         );
  }
}
