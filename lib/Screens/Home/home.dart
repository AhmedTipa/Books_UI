import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 500,
                child: Image.asset(
                  'assets/images/banner-bg.jpg',
                  height: 500,
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Upto 75% Off',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Magnam Deserunt Nostrum Accusamus. Nam Alias Sit Necessitatibus, Aliquid Ex Minima At!',
                        style: TextStyle(fontSize: 10, height: 2),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Shop Now',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green.shade500),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CarouselSlider(
                        items: [
                          Image.asset('assets/images/book-1.png',),
                          Image.asset('assets/images/book-2.png'),
                          Image.asset('assets/images/book-3.png'),
                          Image.asset('assets/images/book-4.png'),
                          Image.asset('assets/images/book-5.png'),
                          Image.asset('assets/images/book-6.png'),
                        ],
                        options: CarouselOptions(
                            autoPlay: true,
                            autoPlayCurve: Curves.easeOutBack,
                            height: 200,
                            enableInfiniteScroll: true,

                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Image.asset(
                          'assets/images/stand.png',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    row(
                        icon: Icons.directions_bus_rounded,
                        text: 'Free Shipping',
                        text1: 'Order Over \$100'),
                    Spacer(),
                    row(
                        icon: Icons.lock,
                        text: 'Secure Payment',
                        text1: '100 Secure Payment')
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    row(
                        icon: Icons.replay_outlined,
                        text: ' Easy Returns',
                        text1: '10 Days Returns'),
                    Spacer(),
                    row(
                        icon: Icons.call_outlined,
                        text: '24/7 Support',
                        text1: 'Call Us Anytime')
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class row extends StatelessWidget {
  const row({
    Key? key,
    required this.icon,
    required this.text,
    required this.text1,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.green,
          size: 35,
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text1,
              style: TextStyle(color: Colors.black, fontSize: 10),
              textAlign: TextAlign.start,
            )
          ],
        )
      ],
    );
  }
}
