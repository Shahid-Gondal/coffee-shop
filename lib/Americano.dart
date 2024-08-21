import 'package:flutter/material.dart';

class Americano extends StatefulWidget {
  const Americano({super.key});

  @override
  State<Americano> createState() => _AmericanoState();
}

class _AmericanoState extends State<Americano> {
  List<String> ame = [
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
        itemCount: ame.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
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
                    BoxShadow(color: Colors.orange, blurRadius: 7),
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
