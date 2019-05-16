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
    'https://images.pexels.com/photos/2252299/pexels-photo-2252299.jpeg',
    'https://images.pexels.com/photos/2272829/pexels-photo-2272829.jpeg'
  ];
}

Widget wallList(BuildContext ctx, List<String> images) => Center(
      child: Image(
        image: NetworkImage(images[0]),
        fit: BoxFit.cover,
      ),
    );
