import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orientation_control/orientation_control.dart';

void main() {
  runApp(
    AutoOrientationDemo(),
  );
}

class AutoOrientationDemo extends StatefulWidget {
  AutoOrientationDemo({this.title = 'Auto Orientation Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _AutoOrientationDemoState();
  }
}

class _AutoOrientationDemoState extends State<AutoOrientationDemo> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      OrientationControl.portraitDownMode();
                    },
                    child: Padding(
                      child: Text("Portrait UPSIDE Down"),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      OrientationControl.fullAutoMode();
                    },
                    child: Padding(
                      child: Text("All modes"),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      OrientationControl.fullAutoButUpsideDownMode();
                    },
                    child: Padding(
                      child: Text("All ButUpsideDown modes"),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      OrientationControl.landscapeAutoMode();
                    },
                    child: Padding(
                      child: Text("Landscape auto"),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      OrientationControl.portraitAutoMode();
                    },
                    child: Padding(
                      child: Text("Portrait auto"),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      OrientationControl.landscapeLeftMode();
                    },
                    child: Padding(
                      child: Text("Landscape left mode"),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.portraitUp,
                        DeviceOrientation.portraitDown,
                        DeviceOrientation.landscapeLeft,
                        DeviceOrientation.landscapeRight,
                      ]);
                      OrientationControl.landscapeRightMode();
                    },
                    child: Padding(
                      child: Text("Landscape right mode"),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      OrientationControl.portraitUpMode();
                    },
                    child: Padding(
                      child: Text("Portrait up mode"),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      OrientationControl.portraitDownMode();
                    },
                    child: Padding(
                      child: Text("Portrait down mode"),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
