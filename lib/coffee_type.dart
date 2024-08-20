import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  const CoffeeType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:AppBar(
        leading: BackButton(color: Colors.black,),
      ),
    );
  }
}
