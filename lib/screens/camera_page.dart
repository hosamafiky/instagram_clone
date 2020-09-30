import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/appBar.dart';

class CameraPage extends StatefulWidget {
  CameraPage({Key key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars(),
      body: Center(
        child: Text("Camera"),
      ),
    );
  }
}
