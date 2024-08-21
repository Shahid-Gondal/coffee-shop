import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColdCofee extends StatefulWidget {
  const ColdCofee({super.key});

  @override
  State<ColdCofee> createState() => _ColdCofeeState();
}

class _ColdCofeeState extends State<ColdCofee> {
  List<String> cold = [
    "Nitro Coffee",
    "Frappuccino",
    "Smoothies",
    "Mocha",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: GridView.builder(
          itemCount: cold.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 150 / 195,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff212325),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.orange,
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                        width: 100,
                      ),
                      Center(
                        child: Image.asset(
                          "assets/images/${cold[index]}.png",
                          fit: BoxFit.cover,
                          height: 120,
                          width: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Text(
                          cold[index],
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Text(
                          "Best Coffee",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "\$30",
                              style: GoogleFonts.poppins(color: Colors.white),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              right: 20,
                            ),
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.orange,
                              child: Icon(
                                CupertinoIcons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
