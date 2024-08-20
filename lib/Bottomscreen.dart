import 'package:coffeeapp/FavouriteScreen.dart';
import 'package:coffeeapp/NotificationScreen.dart';
import 'package:coffeeapp/ProfileScreen.dart';
import 'package:coffeeapp/home.dart';
import 'package:coffeeapp/main.dart';
import 'package:coffeeapp/welcomscreen.dart';
import 'package:flutter/material.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int Myindex = 0;

  List<Widget> BottomBarr = [
    HomeScreen(),
    Favouritescreen(),
    Notificationscreen(),
    Profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff212325),

        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xff212325),
            onTap: (index) {
              setState(() {
                Myindex = index;
              });
            },
            currentIndex: Myindex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.white,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    size: 30,
                    color: Colors.white,
                  ),
                  label: "Favourite"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notification_important,
                    size: 30,
                    color: Colors.white,
                  ),
                  label: "Notification"),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.white,
                ),
                label: "Profile",
              ),
            ]),
        body: BottomBarr[Myindex]);
  }
}
