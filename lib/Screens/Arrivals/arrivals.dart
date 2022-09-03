import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Arrivals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'New Arrivals',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                  items: [
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                  ],
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                  )),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                  items: [
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                  ],
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deal Of The Day',
                        style: TextStyle(color: Colors.green, fontSize: 17,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Upto 50% Off',
                        style: TextStyle(color: Colors.black, fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 100,
                        height: 40,
                        color: Colors.green,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Shop Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Image.asset('assets/images/deal-img.jpg',
                      height: 300,
                        fit: BoxFit.fill,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
      child: Row(
        children: [
          Image.asset(
            'assets/images/book-4.png',
            height: 150,
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'New Arrivals',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: '\$15.99',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: '\$20.99',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ])),
            ],
          )
        ],
      ),
    );
  }
}
