import 'package:flutter/material.dart';
import 'package:image_auto_slider/image_auto_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ImageAutoSliderExample"),
        ),
        body: Container(
            child: widget(
          child: Column(
            children: <Widget>[
              ImageAutoSlider(
                assetImages: [
                  AssetImage('assets/images/image1.png'),
                  AssetImage('assets/images/image2.png'),
                  AssetImage('assets/images/image3.png')
                ],
                imageHeight: 400,
                boxFit: BoxFit.fitHeight,
                slideMilliseconds: 800,
                durationSecond: 3,
              ),
            ],
          ),
        )),
      ),
    );
  }

  widget({Column? child}) {}
}
