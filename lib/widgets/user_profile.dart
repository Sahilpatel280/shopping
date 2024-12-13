import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class user_profile extends StatefulWidget {
  user_profile({
    super.key,
    required this.text,
    required this.images,
    this.width,
    this.heights,
    required this.fit,
    required this.borderRadius,
    required this.text1,
    required this.text2,

  });


  var text;
  String text1;
  String text2;
  var images;
  final double ? heights,width;
   double borderRadius;
  var fit;

  @override
  State<user_profile> createState() => _user_profileState();
}

class _user_profileState extends State<user_profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32,right: 32),
      child: Container(
        height: 191 ,
        width: 331,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white10,
                offset: Offset(15.0, 15.0),
                blurRadius: 20.0,
                spreadRadius: 12.0,
              ),
            ]
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(widget.borderRadius),
                    ),
                    child: Image.asset(
                      widget.images,
                      height: widget.heights,
                      width: widget.width,
                      fit: widget.fit,
                    ),
                  ),
                ),
                SizedBox(width: 9,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 17,),
                    Container(
                      height: 22,
                      width: 162,
                      child: Text(
                        widget.text,
                        style:TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Variations :",
                          style:TextStyle(
                            fontSize: 12,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          height: 17,
                          width: 39,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            border: Border.all(
                              color: Color(0xFF0000000),
                              width: 0.3,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              widget.text1,
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                              ),),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 17,
                          width: 39,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            border: Border.all(
                              width: 0.3,
                              color: Color(0xFF0000000),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              widget.text2,
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                              ),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Text(
                          "4.8",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),),
                        SizedBox(width: 3,),
                        RatingBarIndicator(
                            rating: 4.5,
                            itemSize: 20,
                            itemBuilder: (_,__) => Icon(Icons.star,color:Colors.yellow,)),
                      ],
                    ),
                    SizedBox(height: 11,),
                    Row(
                      children: [
                        Container(
                          height: 29,
                          width: 84,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            border: Border.all(
                              color: Color(0xffCACACA),
                              width: 0.3,
                            ),
                          ),
                          child: Align
                            (
                            alignment: Alignment.center,
                            child: Text(" \$ ${ 34.00 }",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                fontFamily: "Montserrat",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 11,),
                        Row(
                          children: [
                            Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'upto 33% off',
                                    style: TextStyle(
                                      fontSize: 8, // Adjust size
                                      color: Colors.red, // Red color for text
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                              Text(
                                '\$64.00',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,// Adjust size
                                  color: Colors.grey, // Grey color for text
                                  decoration: TextDecoration.lineThrough, // Strikethrough
                                ),
                              ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(height: 12,),
            Container(
              width: 311,
              height: 1,
              color: Color(0xffBBBBBB),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  SizedBox(height: 12,),
                  Text(
                    "Total Order (1) : ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Montserrat",
                    ),),
                  SizedBox(width: 166,),
                  Text(" \$ ${ 34.00 }",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ],
              ),
            )
          ],
        ) ,
      ),
    );
  }
}