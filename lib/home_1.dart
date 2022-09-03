import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:books/Screens/Arrivals/arrivals.dart';
import 'package:books/Screens/Blogs/blogs.dart';
import 'package:books/Screens/Clients_Reviews/client_review.dart';
import 'package:books/Screens/Featured/featured.dart';
import 'package:books/Screens/Home/home.dart';
import 'package:books/constants.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> Screens = [
    Home1(),
    Featured(),
    Arrivals(),
    Client_Reviews(),
    Blogs(),
  ];
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: -8,
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 70,
        leading: Icon(
          Icons.menu_book_rounded,
          color: Colors.green.withOpacity(0.9),
          size: 35,
        ),
        title: Text(
          'Bookly',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: [
          iconBtn(
            press: () {},
            icon: Icons.search_sharp,
          ),
          iconBtn(
            press: () {},
            icon: Icons.favorite,
          ),
          iconBtn(
            press: () {},
            icon: Icons.shopping_cart,
          ),
          iconBtn(
            press: () {},
            icon: Icons.person,
          ),
        ],
      ),
      body: Screens[currentindex],
      bottomNavigationBar:AnimatedBottomNavigationBar(
        iconSize: 40,
onTap: (index){
       setState(() {
         currentindex=index;
       });
},
        activeIndex: currentindex,
        gapWidth: 5,
        elevation: 0,
        activeColor: Colors.blueGrey,
        backgroundColor: Colors.green.shade500,
        inactiveColor: Colors.white,
        gapLocation: GapLocation.none,
        leftCornerRadius: 25,
        rightCornerRadius: 25,
        splashColor: Colors.green,
        icons: [
          Icons.home,
          Icons.menu,
          Icons. share_arrival_time_outlined,
          Icons.chat_rounded ,
          Icons.collections_bookmark_rounded,
        ],


      )
    );
  }
}
