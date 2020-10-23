// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skillbox task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Skillbox task pub'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150,
              child: SvgPicture.asset('assets/svg/video-player.svg'),
            ),
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [
                'http://upload.wikimedia.org/wikipedia/commons/0/02/SVG_logo.svg',
                'https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/410.svg',
                'https://upload.wikimedia.org/wikipedia/commons/b/b4/Chess_ndd45.svg',
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 25.0),
                        child: SvgPicture.network(i));
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
