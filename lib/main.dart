import 'package:amoled/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(AMOLED());

class AMOLED extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'AMOLED Wallpapers',
    home: AMOLEDHome(),
    debugShowCheckedModeBanner: false,
  );
}
