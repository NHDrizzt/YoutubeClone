import 'package:flutter/material.dart';
import 'canal.dart';

class Video {
  AssetImage thumbnail;
  double viewCount;
  DateTime uploadDate;
  String videoTitle;
  Canal canal;

  Video(AssetImage thumbnail, double viewCount, DateTime uploadDate,
      String videoTitle, Canal canal) {
    this.thumbnail = thumbnail;
    this.viewCount = viewCount;
    this.uploadDate = uploadDate;
    this.videoTitle = videoTitle;
    this.canal = canal;
  }

  // code para a contagem de views
  String getViewCount() {}
  //code de compressagem views

}
