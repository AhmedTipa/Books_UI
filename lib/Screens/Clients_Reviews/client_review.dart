
import 'package:books/aa.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Client_Reviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
            Text(
            'Client\'s Reviews',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CarouselSlider.builder(
              itemCount: ph.length,
              itemBuilder:  (BuildContext context, int index,
              int pageViewIndex) => buildContainer(index),
          options: CarouselOptions(
            height: 350,
            aspectRatio: 0.7,
            enlargeCenterPage: true,
            autoPlay: true,
            pauseAutoPlayOnManualNavigate: true
          ),
          ),
      ],
    ),)
    ,
    );
  }

  Container buildContainer(index) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ClipOval(
              child: SizedBox(
                height: 60,
                width: 60,
                child: Image.asset(ph[index].image),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              ph[index].name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'orem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Magnam Deserunt Nostrum Accusamus. Nam Alias Sit Necessitatibus, Aliquid Ex Minima At!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
