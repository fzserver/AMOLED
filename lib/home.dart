import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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

  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> wallpapersList;

  void firestore() async {
    final Firestore firestore = Firestore();
    await firestore.settings(timestampsInSnapshotsEnabled: true);
    final CollectionReference cr = firestore.collection('amoled');
    subscription = cr
        .snapshots()
        .listen((data) => setState(() => wallpapersList = data.documents));
  }

  // List<String> wallpapersList = [
  //   'https://images.pexels.com/photos/2252299/pexels-photo-2252299.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  //   'https://images.pexels.com/photos/2272829/pexels-photo-2272829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  //   'https://images.pexels.com/photos/2291725/pexels-photo-2291725.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
  // ];
}

Widget wallList(BuildContext ctx, List<DocumentSnapshot> images) =>
    images != null
        ? GridView.count(
            crossAxisCount: 2,
            childAspectRatio: .64,
            children: List.generate(
              images.length,
              (index) => Image(
                    image: NetworkImage(images[index].data['url']),
                    fit: BoxFit.cover,
                  ),
            ),
          )
        : Center();
