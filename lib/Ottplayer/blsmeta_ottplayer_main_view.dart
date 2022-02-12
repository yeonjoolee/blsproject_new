import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class BlsmetaOttPlayerMainView extends StatefulWidget {
  const BlsmetaOttPlayerMainView({Key? key}) : super(key: key);

  @override
  _BlsmetaOttPlayerMainViewState createState() =>
      _BlsmetaOttPlayerMainViewState();
}

final List<String> imgList = [
  'https://picsum.photos/seed/1/600/900',
  'https://picsum.photos/seed/1/600',
  'https://picsum.photos/seed/1/600',
  'https://picsum.photos/seed/1/600'
];
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo'),
        ),
        body: ImageSlideshow(
          /// Width of the [ImageSlideshow].
          width: double.infinity,

          /// Height of the [ImageSlideshow].
          height: 200,

          /// The page to show when first creating the [ImageSlideshow].
          initialPage: 0,

          /// The color to paint the indicator.
          indicatorColor: Colors.blue,

          /// The color to paint behind th indicator.
          indicatorBackgroundColor: Colors.grey,

          /// The widgets to display in the [ImageSlideshow].
          /// Add the sample image file into the images folder
          children: [
            Image.asset(
              'https://picsum.photos/seed/1/600',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'https://picsum.photos/seed/1/600',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'https://picsum.photos/seed/1/600',
              fit: BoxFit.cover,
            ),
          ],

          /// Called whenever the page in the center of the viewport changes.
          onPageChanged: (value) {
            print('Page changed: $value');
          },

          /// Auto scroll interval.
          /// Do not auto scroll with null or 0.
          autoPlayInterval: 3000,

          /// Loops back to first slide.
          isLoop: true,
        ),
      ),
    );
  }
}

class _BlsmetaOttPlayerMainViewState extends State<BlsmetaOttPlayerMainView> {
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        item,
                        fit: BoxFit.fill,
                        width: 1000.0,
                        height: 2000.0,
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'N. ${imgList.indexOf(item)} image',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  Widget _buildImage() {
    return Image.network('https://picsum.photos/seed/1/600/900');
  }

  Widget _buildABC() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 30, 0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'New Drama',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }

  Widget _buildABC2() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 0, 30),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Experience Recent Drama Series',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
    );
  }

  Widget _buildABC3() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 30, 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'You are watching',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }

  Widget _buildABC4() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 30, 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Top 10',
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var carouselOptions = CarouselOptions(
      autoPlay: false,
      height: 400,
      aspectRatio: 1,
      enlargeCenterPage: true,
      enlargeStrategy: CenterPageEnlargeStrategy.height,
    );
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: Get.width,
        height: Get.height,
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildImage(),
              _buildABC(),
              _buildABC2(),
              _buildABC3(),
              _buildABC4(),
              CarouselSlider(
                options: carouselOptions,
                items: imageSliders,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         'Font Size',
      //         style: TextStyle(fontSize: 30),
      //       ),
      //       Text(
      //         'Font Weight',
      //         style: TextStyle(fontWeight: FontWeight.bold),
      //       ),
      //       Text(
      //         'Color',
      //         style: TextStyle(color: Colors.red),
      //       ),
      //       Text(
      //         'Font Family',
      //         style: TextStyle(fontSize: 40, fontFamily: 'Signatra'),
      //       ),
      //     ],
      //   ),
      // ),
