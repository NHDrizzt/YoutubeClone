import 'package:AnimeSample/model/textstyle.dart';
import 'package:AnimeSample/model/videos.dart';
import 'package:AnimeSample/view/avatarldocanal.dart';
import 'package:AnimeSample/view/sugtabs.dart';
import 'package:AnimeSample/view/view_card.dart';
import 'package:flutter/material.dart';
import 'package:AnimeSample/model/colors.dart';
import 'package:AnimeSample/model/canal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Youtube Info'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: DefaultTabController(
        length: 5,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Container(
                color: backgroundColor,
                child: ListView(),
              ),
              new Container(
                color: backgroundColor,
              ),
              new Container(
                color: backgroundColor,
                child: ListView(
                  children: puxaVideos(true),
                ),
              ),
              new Container(
                color: backgroundColor,
              ),
              new Container(
                color: backgroundColor,
              ),
            ],
          ),
          bottomNavigationBar: new TabBar(
            labelStyle: tabTextStyle,
            tabs: tabList,
            labelColor: tabBarSelectedIconsColor,
            unselectedLabelColor: tabBarUnselectedIconsColor,
            indicatorColor: Colors.transparent,
          ),
          backgroundColor: tabBarColor,
        ),
      ),
    );
  }

  List<Widget> tabList = [
    Tab(
      icon: new Icon(Icons.home),
      text: "Início",
    ),
    Tab(
      icon: new Icon(Icons.explore),
      text: "Explorar",
    ),
    Tab(
      icon: new Icon(Icons.subscriptions),
      text: "Inscrições",
    ),
    Tab(
      icon: new Icon(Icons.email),
      text: "Notificações",
    ),
    Tab(
      icon: new Icon(Icons.video_library),
      text: "Biblioteca",
    )
  ];

  Canal canal =
      new Canal("Daquele Jeito", AssetImage("assets/profile/images.jpg"));

  List<Widget> puxaVideos(bool inicio) {
    List<Video> videos = fabricaDeVideo();
    List<Widget> cards = [];
    if (inicio) {
      cards.add(Container(
        color: backgroundColor,
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: [
                AvatarCanal(canal: canal),
              ],
            ),
            Divider(
              color: tabBarSelectedIconsColor,
            ),
            SuggestionsTab(),
          ],
        ),
      ));
    } else {
      cards.add(Container(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        color: backgroundColor,
        height: 50,
      ));
    }
    for (Video x in videos) {
      cards.add(VideoCard(
        video: x,
      ));
    }
    return cards;
  }

  List<Video> fabricaDeVideo() {
    List<Video> vid = [];
    vid.add(new Video(
        AssetImage("assets/thumbs/maxresdefault.jpg"),
        10000,
        DateTime.now().subtract(new Duration(days: 200)),
        "Olha o bixo vindo muleque",
        canal));
    return vid;
  }
}
