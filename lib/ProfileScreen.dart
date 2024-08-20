import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile",style: GoogleFonts.poppins(
          color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.yellow,
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Color(0xff212325),
      body:
      Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/pic3.png"),
              radius: 50,

            ),
          ),
        ],
      ),
    );
  }
}
