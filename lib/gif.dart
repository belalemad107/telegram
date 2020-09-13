import 'package:flutter/material.dart';
import 'package:loading_gifs/loading_gifs.dart';
class Gif extends StatefulWidget {
  @override
  _GifState createState() => _GifState();
}

class _GifState extends State<Gif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          FadeInImage.assetNetwork(
              placeholder: cupertinoActivityIndicatorSmall,
              image: "image_1.png"),
          FadeInImage.assetNetwork(
              placeholder: cupertinoActivityIndicatorSmall,
              image: "image_2.png"),
          FadeInImage.assetNetwork(
              placeholder: cupertinoActivityIndicatorSmall,
              image: "image_3.png"),
        ],
      ),
    );
  }
}
