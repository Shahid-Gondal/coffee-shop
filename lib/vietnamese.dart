import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VietnameseScreen extends StatefulWidget {
  final String img;

  const VietnameseScreen({super.key, required this.img});

  @override
  State<VietnameseScreen> createState() => _VietnameseScreenState();
}

class _VietnameseScreenState extends State<VietnameseScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff212325),
      appBar: AppBar(
      backgroundColor: Color(0xff212325),
        leading: BackButton(color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/${widget.img}.png",
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
              Text(
                "Coffee",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
