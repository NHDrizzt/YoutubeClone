import 'package:flutter/material.dart';
import 'package:AnimeSample/model/videos.dart';
import 'package:AnimeSample/model/textstyle.dart';

class VideoCard extends StatelessWidget {
  VideoCard({this.video});

  final Video video;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: <Widget>[
          Container(
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: video.thumbnail,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: Row(children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 35,
                    child: CircleAvatar(
                      backgroundImage: video.canal.perfilImagem,
                    ),
                  ),
                  Container()
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(video.getVideoTitle(), style: videoTitleStyle),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                            video.canal.nomeCanal,
                            style: videoInfoStyle,
                          ),
                          Text(
                            " ∙ ",
                            style: videoInfoStyle,
                          ),
                          Text(
                            video.getViewCount() + " views",
                            style: videoInfoStyle,
                          ),
                          Text(
                            " ∙ ",
                            style: videoInfoStyle,
                          ),
                          Text(
                            video.getTimeSinceUpload() + " ago",
                            style: videoInfoStyle,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
