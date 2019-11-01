import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ContentPageA extends StatelessWidget {
  PageController pageController;
  List<Color> pagesColor;
  int position;

  ContentPageA({this.pageController, this.pagesColor, this.position});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                pageController.jumpToPage(3);
              },
            ),
            RaisedButton(
              onPressed: (){
                pageController.jumpToPage(5);
              },
            ),
          ],
        ),
        Container(
          color: pagesColor[position],
          child: Center(
            child: Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    pageController.previousPage(duration: Duration(seconds: 1), curve: Curves.ease);
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
                    pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.ease);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Icon(Icons.chevron_right),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
