import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Hotcoffee extends StatefulWidget {
  const Hotcoffee({super.key});

  @override
  State<Hotcoffee> createState() => _HotcoffeeState();
}

class _HotcoffeeState extends State<Hotcoffee> {
  List<String> img = [
    "Vietnamese",
    "Caffemocha",
    "Doppio",
    "Latte",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Best coffee",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
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
    ) ;
  }
}
