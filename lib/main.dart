import 'package:coffeeapp/Bottomscreen.dart';
import 'package:coffeeapp/ColdCofee.dart';
import 'package:coffeeapp/home.dart';
import 'package:coffeeapp/saplash_secreen.dart';
import 'package:coffeeapp/vietnamese.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SaplashSecreen(),

    );
  }

}
