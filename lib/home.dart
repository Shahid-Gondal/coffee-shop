import 'dart:io';

import 'package:coffeeapp/ColdCofee.dart';
import 'package:coffeeapp/HotCoffee.dart';
import 'package:coffeeapp/coffee_type.dart';
import 'package:coffeeapp/offer.dart';
import 'package:coffeeapp/vietnamese.dart';
import 'package:coffeeapp/welcomscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {

  String coffeeType = "Coffee Type";
  String recentorders = "Recent Orders";
  String offers = "Offers";
  String rewards = "Rewards";
  String Settings = "Settings";

  List<String> img = [
    "Vietnamese",
    "Caffemocha",
    "Doppio",
    "Latte",
  ];

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(Gondal);
    super.initState();
  }

  Gondal() {
    if (_tabController.indexIsChanging) setState(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
              icon: Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ),
              color: Color(0xff212325),
              itemBuilder: (context) => [
                PopupMenuItem(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CoffeeType(),
                          ));
                    },
                    child: Text(
                      coffeeType,
                      style: TextStyle(color: Colors.white),
                    )),
                PopupMenuItem(
                    child: Text(
                  recentorders,
                  style: TextStyle(color: Colors.white),
                )),
                PopupMenuItem(
                    child: Text(
                  offers,
                  style: TextStyle(color: Colors.white),
                )),
                PopupMenuItem(
                    child: Text(
                  rewards,
                  style: TextStyle(color: Colors.white),
                )),
                PopupMenuItem(
                    child: Text(
                  Settings,
                  style: TextStyle(color: Colors.white),
                )),
              ],
            )
          ],
          leading: BackButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Welcomscreen(),
                  ));
            },
            color: Colors.white,
          ),
          backgroundColor: const Color(0xff212325),
        ),
        backgroundColor: const Color(0xff212325),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Padding(
                  padding: const EdgeInsets.only(right: 65),
                  child: Text(
                    "It's Great Day for Coffee",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff212325),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 20,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          onTap: () {
                            showSearch(
                                context: context,
                                delegate: CustomSearchDelegate());
                          },
                          decoration: InputDecoration(
                              hintText: ("Find Your Coffee"),
                              hintStyle: GoogleFonts.poppins(
                                color: Colors.white54,
                              ),
                              icon: const Icon(
                                Icons.search,
                                color: Colors.white54,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TabBar(
                  indicatorColor: Colors.orange,
                  controller: _tabController,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  tabs: [
                    Tab(
                      child: Text(
                        "Hot Coffee",
                        style: GoogleFonts.poppins(
                          color: Colors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Cold Coffee",
                        style: GoogleFonts.poppins(
                          color: Colors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Cappuiccino",
                        style: GoogleFonts.poppins(
                          color: Colors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Americano",
                        style: GoogleFonts.poppins(
                          color: Colors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
              Center(
                  child: [
                    Hotcoffee(),
                    ColdCofee(),
                Container(
                  height: 500,
                  child: GridView.builder(
                    itemCount: img.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 150 / 195,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  VietnameseScreen(img: img[index]),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.all(12),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: const Color(0xff212325),
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: const [
                              BoxShadow(color: Colors.black, blurRadius: 20),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    "assets/images/${img[index]}.png",
                                    fit: BoxFit.cover,
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                img[index],
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Best coffee",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$30",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.orange,
                                    child: Icon(
                                      CupertinoIcons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 500,
                  child: GridView.builder(
                    itemCount: img.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 150 / 195,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  VietnameseScreen(img: img[index]),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.all(12),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: const Color(0xff212325),
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: const [
                              BoxShadow(color: Colors.black, blurRadius: 20),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    "assets/images/${img[index]}.png",
                                    fit: BoxFit.cover,
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                img[index],
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Best coffee",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$30",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.orange,
                                    child: Icon(
                                      CupertinoIcons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),



              ][_tabController.index]),
            ])));
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Apple",
    "Banana",
    "Orange",
    "Peer",
    "Mango",
    "Pineapple",
    "Gave",
    "Watermelon",
    "BlueBerries",
    "Strawberries",
    "Dates",
    "Melons",
    "Grapes",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back_ios_new));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruits in searchTerms) {
      if (fruits.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruits);
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruits in searchTerms) {
      if (fruits.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruits);
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
