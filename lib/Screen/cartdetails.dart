import 'package:flutter/material.dart';

import '../widgets/user_profile.dart';

class Designdetails extends StatefulWidget {
  const Designdetails({super.key});

  @override
  State<Designdetails> createState() => _DesigndetailsState();
}

class _DesigndetailsState extends State<Designdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),

      body: Column(
        children: [
          Text(
            "Shopping List",
            style: TextStyle(
              color: Color(0xFF000000),
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: "Montserrat",
            ),
          ),
          SizedBox(height: 29,),
          user_profile(text: "Women’s Casual Wear",
              images:"assets/Mask group.png",
              width: 130,
              heights: 125,
              fit: BoxFit.cover,
              borderRadius: 4,
              text1: "Black",
              text2: "Red",


          ),
          SizedBox(height: 30,),
          user_profile(
              text: "Men’s Jacket",
              images:"assets/image 15.png",
              width: 130,
              heights: 125,
              fit:BoxFit.cover,
              borderRadius: 4,
            text1: "Green",
            text2: "Grey",
          ),
        ],
      ),

    );
  }
}


