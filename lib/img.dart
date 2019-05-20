import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Img extends StatefulWidget {
String imgpath;
Img(this.imgpath);


  @override
  _ImgState createState() => _ImgState();
}

class _ImgState extends State<Img> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: Text('AMOLED'),
      //     backgroundColor: Colors.transparent,
      //     leading: IconButton(
      //       icon: Icon(
      //         Icons.arrow_back, 
      //         color: Colors.white,
      //         ),
      //     onPressed: () => Navigator.pop(context, false),
      //     ),
      // ),
      body: Stack(fit: StackFit.expand,
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height, child: Image(image: NetworkImage(widget.imgpath),fit: BoxFit.cover,)),
      ],)
    );
  }
  
}