import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
class ProductImageSlide extends StatefulWidget {
  const ProductImageSlide({super.key});

  @override
  State<ProductImageSlide> createState() => _ProductImageSlideState();
}

class _ProductImageSlideState extends State<ProductImageSlide> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.redAccent,
        indicatorBackgroundColor: Colors.white,
        indicatorRadius: 4,
     //   autoPlayInterval: 1000,
        isLoop: true,
        height: 300,
        children:[
          Padding(
              padding: EdgeInsets.all(8),
            child:Image.asset("images/watch.png"),),
          Padding(
            padding: EdgeInsets.all(8),
            child:Image.asset("images/watch.png"),),
          Padding(
            padding: EdgeInsets.all(8),
            child:Image.asset("images/watch.png"),),
          Padding(
            padding: EdgeInsets.all(8),
            child:Image.asset("images/watch.png"),),
        ] ,
              
    );
  }
}
