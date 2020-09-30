import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}
