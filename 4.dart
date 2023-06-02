import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 4',
      home: ColorChanges(),
    );
  }
}

class ColorChanges extends StatefulWidget {
  const ColorChanges({Key? key}) : super(key: key);

  @override
  State<ColorChanges> createState() => _ColorChangesState();
}

class _ColorChangesState extends State<ColorChanges> {
  void getRandomColor() {
    var index = Random().nextInt(Colorlist.length-1);
    print('index : $index');
    setState(() {
      selectColors = Colorlist[index];
    });
  }
  var Colorlist = <Color>[
    Colors.brown,
    Colors.green,
    Colors.lightGreenAccent,
    Colors.lightBlue,
    Colors.teal,
   
  ];
  var selectColors = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectColors,
      appBar: AppBar(
        title: Text('Question 4'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("Change The BackGround Color"),
            onPressed: () {
              getRandomColor();
            },
          ),
        ),
      ),
    );
  }
}
