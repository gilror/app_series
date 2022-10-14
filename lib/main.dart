import 'package:flutter/material.dart';
import 'package:movie_app/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
  ));
}
