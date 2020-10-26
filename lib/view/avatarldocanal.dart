import 'package:flutter/material.dart';
import 'package:AnimeSample/model/textstyle.dart';
import 'package:AnimeSample/model/canal.dart';

class AvatarCanal extends StatelessWidget {
  AvatarCanal({this.canal});
  final Canal canal;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CircleAvatar(backgroundColor: Colors.white),
          Text(
            canal.nomeCanal,
            style: videoInfoStyle,
          )
        ],
      ),
    );
  }
}
