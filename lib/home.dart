
import 'package:flutter/material.dart';

class AMOLEDHome extends StatefulWidget {
  @override
  _AMOLEDHomeState createState() => _AMOLEDHomeState();
}

class _AMOLEDHomeState extends State<AMOLEDHome> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('AMOLED'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.red,
        body: wallList(context, wallpapersList),
      );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<String> wallpapersList = [
    'https://images.pexels.com/photos/2252299/pexels-photo-2252299.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/2272829/pexels-photo-2272829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/2291725/pexels-photo-2291725.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
  ];
}

Widget wallList(BuildContext ctx, List<String> images) => images != null
    ? GridView.count(
        crossAxisCount: 2,
        childAspectRatio: .64,
        children: List.generate(
          images.length,
          (index) => Image(
                image: NetworkImage(images[index]),
                fit: BoxFit.cover,
               
              ),
        ),
      )
    : Center();
