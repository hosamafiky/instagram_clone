import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CameraPage extends StatefulWidget {
  CameraPage({Key key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFF7F7F7),
        title: Text(
          'Instagram',
          style: TextStyle(
            fontFamily: "Billabong",
            fontSize: 34.0,
            color: Color(0xFF201D1D),
          ),
        ),
        leading: IconButton(
          icon: Icon(Feather.camera, color: Color(0xFF201D1D)),
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Feather.tv, color: Color(0xFF201D1D)),
            iconSize: 30.0,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Feather.send, color: Color(0xFF201D1D)),
            iconSize: 30.0,
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text("Camera"),
      ),
    );
  }
}
