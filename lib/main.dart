import 'package:AnimeSample/model/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:AnimeSample/model/colors.dart';

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
      color: Colors.black,
      home: DefaultTabController(
        length: 5,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Container(
                color: backgroundColor,
                // child: ListView(children: getVideos(false),),
              ),
              new Container(
                color: backgroundColor,
              ),
              new Container(
                color: backgroundColor,
                child: ListView(
                    // children: getVideos(true),
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
      text: "Home",
    ),
    Tab(
      icon: new Icon(Icons.explore),
      text: "Explore",
    ),
    Tab(
      icon: new Icon(Icons.subscriptions),
      text: "Subscriptions",
    ),
    Tab(
      icon: new Icon(Icons.email),
      text: "Inbox",
    ),
    Tab(
      icon: new Icon(Icons.video_library),
      text: "Library",
    )
  ];
}
