import 'package:flutter/material.dart';

class Cappuiccino extends StatefulWidget {
  const Cappuiccino({super.key});

  @override
  State<Cappuiccino> createState() => _CappuiccinoState();
}

class _CappuiccinoState extends State<Cappuiccino> {
  List<String> Cap = [
    "",
    "",
    "",
    "",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: GridView.builder(
        itemCount: Cap.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          childAspectRatio: 150 / 195,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xff212325),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange,
                      blurRadius: 7,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
