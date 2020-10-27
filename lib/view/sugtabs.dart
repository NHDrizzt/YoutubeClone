import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:AnimeSample/model/colors.dart';
import 'package:AnimeSample/model/textstyle.dart';

class SuggestionsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        padding: EdgeInsets.only(top: 0, left: 5),
        scrollDirection: Axis.horizontal,
        children: getTags(),
        shrinkWrap: false,
      ),
    );
  }

  List<Widget> getTags() {
    List<Widget> tags = [];
    for (int i = 0; i < 6; i++) {
      tags.add(Container(
        margin: EdgeInsets.only(left: 2),
        padding: EdgeInsets.only(top: 3, bottom: 3, right: 5),
        child: new FlatButton(
          child: Text(
            tagList[i],
            style: videoTitleStyle,
          ),
          color: buttonUnselectedIconsColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: tabBarUnselectedIconsColor, width: 0.5)),
          onPressed: () {},
        ),
      ));
    }
    return tags;
  }

  List<String> tagList = [
    "Tudo",
    "Hoje",
    "Continuar Assistindo",
    "Não Assistido",
    "Ao Vivo",
    "Postagens",
    //botao de config
  ];
}
