library temp_plugin;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ImageViewer extends StatefulWidget {
  const ImageViewer({super.key});

  @override
  State<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  List<String> images = [
    "https://images.unsplash.com/photo-1669664321763-95817d3f41cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1677225588482-69d2d3c6d990?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=755&q=80",
    "https://images.unsplash.com/photo-1668370109918-05a046e83fc5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=666&q=80"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider.builder(
        itemCount: images.length,
        itemBuilder: (context, itemIndex, pageIndex) {
          return Image(
            image: NetworkImage(
              images.elementAt(itemIndex),
            ),
            fit: BoxFit.fitWidth,
          );
        },
        options: CarouselOptions(
          autoPlay: true,
        ),
      ),
    );
  }
}
