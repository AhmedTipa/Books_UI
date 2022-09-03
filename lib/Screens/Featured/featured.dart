import 'package:books/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Featured extends StatefulWidget {
  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Text(
                'Featured Books',
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
                  photo(
                    phot: 'assets/images/book-2.png',
                  ),
                  photo(
                    phot: 'assets/images/book-1.png',
                  ),
                  photo(
                    phot: 'assets/images/book-3.png',
                  ),
                  photo(
                    phot: 'assets/images/book-4.png',
                  ),
                  photo(
                    phot: 'assets/images/book-5.png',
                  ),
                  photo(
                    phot: 'assets/images/book-6.png',
                  ),
                  photo(
                    phot: 'assets/images/book-7.png',
                  ),
                ],
                options: CarouselOptions(
                  aspectRatio: 30,
                  height: 470,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      'Subscribe For Latest Updates',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),SizedBox(height: 15,),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'enter your email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: 100,
                      height: 40,
                      color: Colors.green,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'subscribe',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class photo extends StatefulWidget {
  const photo({
    Key? key,
    required this.phot,
  }) : super(key: key);
  final String phot;
  @override
  State<photo> createState() => _photoState();
}

class _photoState extends State<photo> {
  bool favorite=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 250,
      decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
      child: Column(
        children: [
          Row(
            children: [
              iconBtn(press: () {
                setState(() {
                  favorite=!favorite;
                });
              }, icon:favorite?(Icons.favorite_border):Icons.favorite,color: Colors.red),
              iconBtn(press: () {}, icon: Icons.search),
              iconBtn(press: () {}, icon: Icons.remove_red_eye_outlined)
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          SizedBox(
            width: double.infinity,
            height: 1,
            child: Container(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(
            widget.phot,
            width: 600,
            height: 250,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Featured Books',
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
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Add To Cart',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)),
          ),
        ],
      ),
    );
  }
}
