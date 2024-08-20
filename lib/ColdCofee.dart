import 'package:flutter/material.dart';

class ColdCofee extends StatefulWidget {
  const ColdCofee({super.key});

  @override
  State<ColdCofee> createState() => _ColdCofeeState();
}

class _ColdCofeeState extends State<ColdCofee> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
          childAspectRatio: (150/200),
          shrinkWrap: true,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          physics: AlwaysScrollableScrollPhysics(),
          crossAxisCount: 2,
      children: [
        Container(
          color: Colors.red,
      ),
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.red,
      ),
      ],
      ),
    );
  }
}


