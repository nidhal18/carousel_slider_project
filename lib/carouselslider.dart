import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final List<String> imgList = [
    'https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk=',
    'https://media.istockphoto.com/id/499599645/photo/roan-mountain-sunset.jpg?s=612x612&w=0&k=20&c=zs_rDcRxe_UKGbAyeBX8S7NEho0P8dyK8zkE9sdr3Xw=',
    'https://media.istockphoto.com/id/577332486/photo/sunset-over-the-clouds.jpg?s=612x612&w=0&k=20&c=Io4bFr6_xai0Ivktz_uq7MJESwyBSirFKfyViXBVgUo=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Slider'),
      ),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index, realIndex) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Image.network(
                imgList[index],
                fit: BoxFit.cover,
              ),
            );
          },
          options: CarouselOptions(
            height: 500,
            autoPlay: true,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 1),
            aspectRatio: 1,
            initialPage: 0,
          ),
        ),
      ),
    );
  }
}
